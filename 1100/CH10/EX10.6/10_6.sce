clc
//initialisation of variables
P= 15 //psia
sx= 1.7050 //Btu/lb R
sg= 1.7549 //btu/lb R
sfg= 1.4415 //Bru/lb R
hg= 1150.8 //btu/lb
hfg= 969.7 //Btu/lb
vg= 26.29 //cu ft/lb
vfg= 26.27 //cu ft/lb
//CALCULATIONS
n= (sg-sx)/sfg
sx= sg-n*sfg
hx= hg-n*hfg
vx= vg-n*vfg
//RESULTS
printf ('Volume= %.2f cu ft/lb',vx)
printf (' \n Entropy = %.2f Btu/lb R',sx)
printf (' \n Enthalpy= %.1f Btu/lb',hx)