library (tidyverse)

?mpg

mpg

print(mpg, n=15)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y=hwy))

ncol(mpg)
nrow(mpg)

ggplot(data = mpg) + geom_point(mapping = aes(x=class, y = drv))

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y = hwy, color = class))

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y = hwy), color = "blue")

ggplot(data = mpg) 
+ geom_point(mapping = aes(x = displ, y=hwy)) 
+ facet_wrap(~class)

ggplot(data = mpg) 
+ geom_point(mapping = aes(x = displ, y=hwy)) 
+ facet_grid(drv ~ cyl)