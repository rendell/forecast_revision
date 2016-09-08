library(ggplot2)

long <- read.csv("long.csv")
       
ggplot(long, aes(x=Year,y=Adjustment, colour=Direction))+geom_point()+ geom_point(size=3.5)+
        geom_hline(yintercept=0)+
        ggtitle("Nominal GDP forecast revisions (2007- 2016)")

       
ggplot(long, aes(x=Adjustment))+geom_density(fill="blue",alpha=.3)+
        geom_vline(xintercept= 0.0)+
        ggtitle("Nominal GDP forecast revisions (2007- 2016)")

average_adjustment <- mean(long$Adjustment)
adjustment_count <- summary(long$Direction)

#conditional mean

long$Outlier=as.factor(long$Outlier)
mean(long$Adjusment[long$Outlier<1])
