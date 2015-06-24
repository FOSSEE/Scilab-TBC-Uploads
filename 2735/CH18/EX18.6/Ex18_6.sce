clc
clear
//Initialization of variables
disp("From fig B-4,")
disp("Appropraite notation from textbook has been used")
disp("All are enthalpy values at different stages")
ha=44.36 //Btu/lbm 
hc=18.04 //Btu/lbm
hj=197.58 //Btu/lbm
hh=213.5 //Btu/lbm 
hd=hc //Btu/lbm
he=190.66 //Btu/lbm
hk=241.25 //Btu/lbm
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
