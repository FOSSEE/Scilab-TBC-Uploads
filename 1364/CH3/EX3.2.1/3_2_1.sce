clc
//initialisation of variables
T= 20 //C
h= 1 //cm
dw= 1 //gf/cm^3
dm= 13.6 //gf/cm^3
g= 981 //dyne
Tw= 74 //dyne/cm
Tm= 465 //dyne/cm
//CALCULATIONS
hw= (4*Tw)/(dw*g*(h/10))
hm= (4*Tm*cosd(130))/(dm*g*(h/10))
//RESULTS
printf (' capillary rise of water= %.1f cm',hw)
printf (' \n capillary rise of mercury= %.2f cm',hm)
