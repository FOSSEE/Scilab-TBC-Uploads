
clc
clear
//Input data
P1=0.755;//Barometric reading at the bottom of the building in m
P2=0.73;//Barometric reading at the top of the building in m
da=1.18;//Density of air in kg/m^3
g=9.81;//Gravitalional constant in m/sec^2
d=13600;//Density of Hg in kg/m^3

//Calculations
h=((P1-P2)*d*g)/(da*g);//The height of the building in m

//Output
printf('The height of the building h = %3.2f m',h)
