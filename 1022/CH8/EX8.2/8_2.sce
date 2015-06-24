clc
//initialisation of variables
P= 10 //bar
P1= 38 //bar
T= 310 //C
v= 64.03 //cm^3/gm
s= 6.4415 //J/gm K
vf= 1.12773 //cm^3/gm
vg= 194.44 //cm^3/gm
sf= 2.1387 //J/gm K
sfg= 4.4478 //J/gm K
//CALCULATIONS
x= (v-vf)/(vg-vf)
sx= sf+x*sfg
S= s-sx
//RESULTS
printf ('Change in Entropy= %.3f J/gm',S)
