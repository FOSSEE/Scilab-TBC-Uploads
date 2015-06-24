 clc
//initialisation of variables
T= 100 //F
P= 1000 //psia
dv= -5.1*10^-5 //cu ft/lb
dh= 2.70 //Btu/lb
vf= 0.01613 //cu ft/lb
hf= 67.97 //Btu/lb
//CALCULATIONS
h= dh+hf
v= dv+vf
//RESULTS
printf ('Volume= %.5f cu ft/lb',v)
printf (' \n Enthalpy= %.2f Btu/lb',h)
