
clc
clear
//Initialization of variables
ratio=1/2
R=8.314
p1=0.5 //kPa
p2=0.1 //kPa
//calculations
ya=ratio/(1+ratio)
ds=-ya*R*log(ya) - (1-ya)*R*log(1-ya)
dss=R*log(p1/p2)
//results
printf("Entropy of mixing = %.3f kJ/kmol K",ds)
printf("\n Total entropy change of the universe = %.2f kJ/kmol K",dss)
