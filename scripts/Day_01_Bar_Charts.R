# Load required packages 
library(tidyverse) # for summarizing the data
library(ggsci) # for color palettes of scientific journals
library(ggpubr) # for publication ready themes 
library(gapminder)

# Single Categorical Variable Visualization
gapminder %>% 
  drop_na(continent) %>% 
  ggplot(aes(x = fct_infreq(continent)))+
  geom_bar(fill = "#97B3C6")+
  labs(title = "Number of observations per continent", 
       x = "Continent", 
       y = "Counts")+
  theme_pubr()

# Save Figure 
ggsave("outputs/test.tiff", units="in", width=12, height=6, dpi=300, compression = 'lzw')
