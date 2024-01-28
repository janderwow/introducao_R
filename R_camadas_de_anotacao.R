library(readr)
library(palmerpenguins)


ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
        subtitle = "Sample of Three Penguin Species",
        caption = "Data collected by Dr. kristen Gorman")+
  annotate("text", x=220, y=3500, label="The Gentoo are the largest", fontface="bold", size=4.5, angle=25)

# o codigo pode ser incluido em uma variavel
p <- ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. kristen Gorman")

  p + annotate("text", x=220, y=3500, label="The Gentoo are the largest", fontface="bold", size=4.5, angle=25)
  
  
  ggsave("Three Penguin Species.png")
  