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
  


