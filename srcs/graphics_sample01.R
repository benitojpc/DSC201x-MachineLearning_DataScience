#!/usr/bin/Rscript

my_packages <- c( "httpgd","cursr" )
not_installed <- my_packages[!(my_packages %in% installed.packages() [, "Package"])]
if ( length( not_installed ) ) install.packages( not_installed )

library( httpgd )
library( cursr )

data( iris )

my_wait <- function() {
    f <- list(
        "up"    = function(){mv(row=-1)},
        "down"  = function(){mv(row=-1)},
        "left"  = function(){mv(col=-1)},
        "right" = function(){mv(col=1)}
    )
    
    cat( "Press [Escape] or [Enter] key to continue..." )
    getkpl( escape= c("escape","enter"), fn=f, echo=FALSE )
}

summary( iris )

X11()
plot( x=iris$Sepal.Length, y=iris$Sepal.Width )

my_wait()

plot( x=iris$Sepal.Length, y=iris$Sepal.Width, col=c("pink","blue","red") )

my_wait()

plot( x=iris$Sepal.Length, y=iris$Sepal.Width, col=c("pink","blue","red")[iris$Species] )

my_wait()

plot( x=iris$Sepal.Length, y=iris$Sepal.Width, col=c("pink","blue","red")[iris$Species], pch=c("x","o","i") )

my_wait()

plot( x=iris$Sepal.Length, y=iris$Sepal.Width, col=c("pink","blue","red")[iris$Species], pch=c(2,8,6)[iris$Species])

my_wait()