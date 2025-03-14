install.packages("palmerpenguins")
library(palmerpenguins)

data <- penguins

view(data)

str(data)


#Using the scatterplot, plot the dependency of body mass on the flipper length
#Add a graph title
#Change the color based on the penguin species
#Change the points type based on island they live on

plot(data$flipper_length_mm, y = data$body_mass_g,
     main = "Palmer Penguins: body mass based on flipper length",
     colors <- rainbow(data$species), pch = c(15, 16, 17)[as.integer(data$island)]))
  
#ggplot

install.packages("ggplot2")
library(ggplot2)

view(data)
str(data)
head(data)

#Stejný úkol jako v prvním zadání v BaseR

ggplot(data, aes(x = body_mass_g, y = flipper_length_mm, col = species, shape = island)) + 
                 geom_point() +
                 labs(title ="Flipper length based on body mass")


#To stejné, akorát pokus o zarovnání textu, bez úspěchu

ggplot(data, aes(x = body_mass_g, y = flipper_length_mm,
                                  col = species,
                                  shape = island)) + 
                                  geom_point() +
                                  labs(title = "Flipper length based on body mass") +
                                  theme(plot.title = element_text(hjust = 0.5, size = 12, face = "bold"))


              
                

