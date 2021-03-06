
<img src="https://www2.mnstate.edu/uploadedImages/Content/Marketing/logos/MSUM_Signature_Vert_Color.jpg" alt="MSUM logo" width="200" style="float:right"/>

# Nesting Preferences of Merlins

Presentation ID: 4984

Hiba Chaudhry & Dr. Merkord

Biosciences Department, Minnesota State University Moorhead, 1104 7th
Avenue South, Moorhead, MN 56563 USA

Presented at the MSUM 23rd Online Student Acadamic Conference

Submit a survey for this presentation:
<https://mnstate.co1.qualtrics.com/jfe/form/SV_eFMAwF72JZIoeSq>

## Abstract

The organism that’s understudy is Merlin (*Falco columbarius*), which is
a small, dashing falcon that breeds throughout the northern forests and
prairies of North America, Europe, and Asia. My question is to confirm
if there really is a pattern of more Merlins nesting in urban areas.
This question will be answered with the Species Distribution Model. This
is a quantitative tool used by many ecologists which helps one find a
relationship between a variable and probability of occurrence. EBird
database will be used to obtain data for this project. My variables will
consist of either “present” or “absent” at a given location. Exploratory
data analysis will be used since it permits us to examine the data
without making any assumptions. A prediction that can be made based on
our knowledge on Merlins is that, if an area is too industrialized and
consist of many trees then not many Merlins will be present, since they
require open areas to hunt. A map with predicted abundance, will allow
us to launch other projects regarding Merlins and help us study them
even better because we will have a better understanding of where they
are and which areas they prefer to nest in.

## Introduction

<img src="Images/paste-2D52FEDB.png" width="500">

  - Organism of interest is Merlin which is a small species of falcon
    from the Northern Hemisphere.

  - The question studied here is “are there are more Merlins nesting in
    urban areas when compared to rural areas”?

  - One hypothesis made was if a particular area consist of innumerable
    trees and buildings then there will not be many Merlins present.
    Merlins require open areas to hunt.

  - To test this hypothesis, a map was created showcasing the abundance
    of Merlins in the region of Canada and United States of America.

## Methods

  - This project was created through RStudio.

  - Packages like “mapproj”, “sf”, “rnaturalearth”, “rlang”, “maps”,
    “rnaturalearthdata” were installed which allowed me to come up
    with my final product.

  - The data was obtained from the “Ebird database”, which is what this
    picture displays, the place where I downloaded my files.

![](Images/eBird%20Data%20screenshot.PNG)

## Results

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- --> Figure 1: Map
displaying Merlin abundance throughout the regions of Canada and United
States

  - Black dots are spots where people looked for birds.

  - Green dots are the spots where the birds were found.

  - Not only do we want to know where Merlins are but we also must be
    aware of the places they are not present.

  - A “complete checklist” is a checklist with all species documented,
    where species not observed are put in as “absent”. This allows us to
    see where Merlins are not present.

  - The regions where green dots are clumped are cities which are
    comprised of more Conifers when compared to open land which have
    shrubs and grasses and not a lot of Conifer trees.

  - A lot of black means there weren’t many Merlins observed, which is
    what is shown in the south area of the map.

## Discussion

  - The green dots are clumped where cities are present. There are more
    Conifer trees in the cities. More small birds take shelter in the
    Conifers. Merlins prey on small birds like Horned Larks, House
    Sparrows, Bohemian Waxwing.

  - Some of the different hypotheses that I came up with were called
    “nest availability hypothesis”, “food availability hypothesis” and
    “Merlins avoiding human hypothesis”.
    
      - Nest availability hypothesis states that there will be more
        nests in urban areas because there would be more Conifers
        present.
    
      - Food availability hypothesis present the concept that there will
        be more Merlins observed in urban areas because there are more
        smaller birds present.
    
      - Merlins avoiding humans hypothesis says that if an area is too
        populated, not many Merlins will be found due to innumerable
        buildings and high noise level.
    
    <img src="Images/Merlin Hypotheses.png" width="597" height="520"/>

  - To test all of these hypotheses, more data is needed. Data about
    people and vegetation. We have to see if there are any patterns
    present between variables like trees, Merlins and people.

  - All of this work was just Step 1, which was to get a map showing
    Merlin abundance. The map serves as a tool to do more investigation
    on Merlins.
    
      - This will help us launch other projects like studying Merlin
        behavior or fitness studies. Fitness studies would compare the
        fitness of urban Merlins to non-urban Merlins and see how
        different environments impact these birds.

## References

  - RStudio Team (2021). RStudio: Integrated Development Environment for
    R. RStudio, PBC,
    
    Boston, MA URL <http://www.rstudio.com/.>

  - GDAL/OGR contributors (2021). GDAL/OGR Geospatial Data Abstraction
    
    software Library. Open Source Geospatial Foundation. URL
    <https://gdal.org>

  - eBird Basic Dataset. Version: EBD\_relFeb-2021. Cornell Lab of
    Ornithology, Ithaca, New York. Feb 2021. eBird Basic Dataset.
    Version: EBD\_relFeb-2021. Cornell Lab of Ornithology, Ithaca, New
    York. Feb 2021.

  - R Version 4.0.5 (R Core Team 2021) was used.

  - Software: R Core Team (2020). R: A language and environment for
    statistical computing. R Foundation for Statistical Computing,
    Vienna, Austria. URL <https://www.R-project.org/>.
