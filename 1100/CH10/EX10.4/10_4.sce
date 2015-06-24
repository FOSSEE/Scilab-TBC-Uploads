clc
//initialisation of variables
P= 100 //psia
n= 40
vf= 0.01774 //cu ft/lb
vg= 4.432 //cu ft/lb
hf= 298.4 //Btu/lb
hfg= 888.8 //Btu/lb
sg= 1.6026 //Btu/lb R
sfg= 1.1286 //Btu/lb R
//CALCULATIONS
vx= (n/100)*vf+(1-(n/100))*vg
hx= hf+(1-(n/100))*hfg
sx= sg-(n/100)*sfg
//RESULTS
printf ('Volume= %.2f cu ft/lb',vx)
printf (' \n Entropy = %.2f Btu/lb R',sx)
printf (' \n Enthalpy= %.1f Btu/lb',hx)
