
library(tidyverse)

setwd("~/soumya_cam_mac/teaching/visualization_data_communication")

# download data from
# https://cambiotraining.github.io/visual-data-communication/setup.html
df_data = read.csv(file = "data/finches.csv")

df_data = read_csv(file = "data/finches.csv")

######################
# plotting
######################

# 1. data
# 2. mapping
# 3. aesthetics (what goes on x axis and y axis)
# 4. geom (what kidn of plot)

ggplot2::ggplot(data = df_data)

ggplot2::ggplot(data = df_data, 
                mapping = aes()
                )

ggplot2::ggplot(data = df_data, 
                mapping = aes(x = weight, y = wing)
                )

ggplot2::ggplot(data = df_data,
                mapping = aes(x  = weight, y  = wing)
              ) + geom_point()

plot = ggplot2::ggplot(data = df_data,
                mapping = aes(x  = weight, y  = wing)
                 )
plot = plot + geom_point()
plot
# CONCEPT: scatter plot = geom_point()


# split on colors
plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x  = weight, y  = wing, colour = species)
)
plot = plot + geom_point()
plot


plot = ggplot2::ggplot(data = df_data,
                mapping = aes(x = species, y = blength, colour = species)
                ) 
plot = plot + geom_point()
plot

plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x = species, y = blength, colour = species)
                      ) 
plot = plot + geom_boxplot()
plot

# show the points
plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x = species, y = blength, colour = species)
                      ) 
plot = plot + geom_boxplot()
plot = plot + geom_point()
plot

# show the points with jitter
plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x = species, y = blength, colour = species)
                      ) 
plot = plot + geom_boxplot()
plot = plot + geom_jitter()
plot

# transparency
plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x = species, y = blength, colour = species)
                      ) 
plot = plot + geom_boxplot()
plot = plot + geom_jitter(alpha = 0.6)
plot

colours()

# use colours

plot = ggplot2::ggplot(data = df_data,
                       mapping = aes(x = species, y = blength, colour = species)
                      ) 
plot = plot + geom_boxplot()
plot = plot + geom_jitter(alpha = 0.6, colour = "wheat3")
plot

# CONCEPT: colours in aes() use data to color
#          if colours outside aes() then color yourself


###################
# data munging
###################

# get onluy one species
dplyr::filter(df_data, species == "G. fortis")

# pipes %>%
dplyr::filter(df_data, species == "G. fortis") %>%
  ggplot2::ggplot( aes(x=weight, y = blength)  ) 

dplyr::filter(df_data, species == "G. fortis") %>%
  ggplot2::ggplot( aes(x=weight, y = blength)  ) + 
  geom_point()


