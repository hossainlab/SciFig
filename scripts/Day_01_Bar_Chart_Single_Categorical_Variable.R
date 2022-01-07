# tidyverse for summarizing the data
library(tidyverse) 
# ggsci for color palettes of scientific journals
library(ggsci) 
# ggpubr for publication ready themes 
library(ggpubr) 
# gapminder for built-in gapminder dataset
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

# Save Figure (.tiff, .png, .pdf, .jpg)
ggsave("outputs/test.tiff", units="in", width=12, height=6, dpi=300, compression = 'lzw')
