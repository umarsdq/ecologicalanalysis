## Ecological Data Analysis #

# Clear the environment

rm(list = ls())

# Installing and calling all functions/packages

# install.packages('gsheet')
# install.packages('lme4')
# install.packages('dplyr')
# install.packages('stats')
# install.packages('ggplot2')

library(gsheet)
library(lme4)
library(dplyr)
library(stats)
library(ggplot2)

# Importing data for analysis

AHS_abundance<- gsheet2tbl('https://docs.google.com/spreadsheets/d/1KiPnZ5-FbrqoOJTVAK3wd7qcwQ1wQxCI/edit#gid=228026339')
View(AHS_abundance)

AMD<- gsheet2tbl('https://docs.google.com/spreadsheets/d/1Z5Rfoto8XR1uYlF8YOMcpmT6t81RbybO/edit#gid=2027687899')
View(AMD)

ALAb<- gsheet2tbl('https://docs.google.com/spreadsheets/d/1BBpn_1XkhCq5u0VqXkU2nwa-jyksPBNE/edit#gid=2034489775')
View(ALAb)

# Creating the boxplot

AHS_abundance_boxplot <- ggplot(AHS_abundance, aes(x=Land_subtype, y=Number_aquatic_habitats, fill=Land_type)) + 
  geom_boxplot() + 
  xlab ("Land Subtype") + 
  ylab ("Number of Aquatic Habitats per Location") + 
  scale_fill_manual(values=c("deepskyblue4", "indianred1")) + 
  theme(legend.position = "none")

AHS_abundance_boxplot

AHS_abundance<- filter (AHS_abundance, Land_subtype != "FF")

# Creating the model

model1<- glmer(Number_aquatic_habitats ~ Land_type + (1 | Land_type/Land_subtype/ Replicate), AHS_abundance, family = poisson(link = "log"))

# Outputting the model

summary(model1)

#### Extensions ####

# Extension 1; Correlation between Albo Larvae and Adult Albo

ggplot(ALAb, aes(x=Total_Albo_Larvae, y=Total_Adults)) + 
  xlab ("Number of Larvae") + 
  ylab ("Number of Adults") +
  geom_point(color='#2980B9', size = 4) + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE, color='#2C3E50') 

# SPRC

cor.test(y=ALAb$Total_Albo_Larvae, x=ALAb$Total_Adults, method = 'spearman', exact = FALSE)


# Extension 2; Adult Mosquitoes within Landtypes

ALAb_boxplot <- ggplot(ALAb, aes(x=Land_type, y=Total_Adults, fill=Land_type)) + 
  geom_boxplot() + 
  xlab ("Land Type") + 
  ylab ("Number of Mosquitoes per Location") + 
  scale_fill_manual(values=c("green4", "cadetblue4")) + 
  theme(legend.position = "none")

ALAb_boxplot

model2<- glm (Total_Adults ~ Land_type, ALAb, family = poisson(link = "log"))

summary(model2)
