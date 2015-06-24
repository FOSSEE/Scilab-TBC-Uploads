clc
//Initialization of variables
ha=44.36
hc=18.04
hj=197.58
hh=213.5
hd=hc
he=190.66
hk=241.25
//calculations
m=(hc-ha)/(ha-hj)
hi=(m*hj+hh)/(1+m)
Qa=he-hd
W=he-hh + (1+m)*(hi-hk)
cop=abs(Qa/W)
hp=4.71/cop
//results
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp)
printf("\n Coefficient of performance actual = %.2f ",cop)
