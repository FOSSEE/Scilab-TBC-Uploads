clc
//solution
//    initialization of variables
m=2 // mass of water in kg
P=220 // pressure in KPa
x=0.8 // quality of steam
// Table C.2 is used for values
vg=(P-200)*(0.6058-0.8857)/(300-200)+0.8857 // specific volume of saturated vapour @ given pressure by interpolating
vf=0.0011 // specific volume of saturated liquid @ 220 KPa
v=vf+x*(vg-vf)// property of pure substance
V=m*v // total volume
printf("The Total volume of the mixture is "+string(V)+" m^3")
