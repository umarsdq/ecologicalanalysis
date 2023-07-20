# Ecological Data Analysis
### Introduction:

Aquatic habitats are distributed across the face of the earth, facing many challenges that are
not found in terrestrial environments. It is without question that human culture has
undoubtedly had a negative impact on biodiversity, especially since the Industrial Revolution.
Overfishing and hunting, habitat loss due to agriculture and urban sprawl, pesticide and
herbicide use, and the release of other toxic substances into the environment have all affected
vertebrates. In urban and suburban areas, where they flourish in close proximity to humans,
many animal and plant species have adapted to new stresses, food sources, predators, and
threats. Their success gives researchers useful, and often surprising, insights into evolutionary
and selection processes. This begs the question, is there a difference in the number of aquatic
habitats in Natural areas compared to Human Settlements?

### Method of Investigation:
In order to accurately determine a conclusion, we must conduct an aquatic habitat survey.
Within this, we investigate two categories of locations: human settlements and natural
settlements. Further within these locations lies two types of ecological locations. Within
human settlements, we find oil palms and logged forests settlements, while in natural
settlements, we find continuous forests and forest fragments. By studying and gathering data
from each respective area, we are therefore able to provide reasonable evidence to support or
fault the hypothesis.

The data collected ranged from simply figuring out the number of aquatic habitats distributed
about a location, conducting a larval survey and determining larval presence and abundance,
and the most painful of all, the adult population survey. The APS consisted of surveyors acting
as bait to mosquitoes and collecting them by electric aspirators. This allows the mosquito
abundance in a location to be determined, which would correlate to an abundance of aquatic
habitation. All three methods were included for maximum accuracy and effect, to ensure that
more than one outcome could be made to support our conclusion.

The data was collected, and visual representations of the data were generated, specifically in
the form of box plots. The best possible representation of data in this context was a box plot,
as we were able to compare relative medians to choose which area had more aquatic
ecosystems on aggregate and interquartile ranges to see which consisted of a higher
distribution than other areas. The graphical representation allows us to assess the differences
at ease, without needing complicated models.

However, to determine the difference in the number of aquatic habitats in each respective
settlement, we opted for a Generalized Linear Model. These models are based on Linear Mixed
Models, which account for fixed and random effects. However, they assume the response
variable is normally distributed, which GLMMs do not assume so. This is especially useful for
ecological data, and an appropriate distribution for the response variable can be used instead.

In this case, the Poisson Distribution was used, which models the number of events occurring
in a given time interval. This allowed an easier comparison of the number of aquatic habitats at
different times of the day. The Poisson distribution helps us to make predictions on how many
more aquatic habits there will be in the coming years, which is crucial in providing important
ecological data in this case. As previously mentioned, the Poisson distribution is used for count
data and is, therefore, more appropriate since it can take any value.
