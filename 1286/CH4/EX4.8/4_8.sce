clc
//initialisation
p=0.76
v=1650//cc
m=1//gm
r=13600//kg/m3
//CALCULATIONS
w=(p*9.81*r*(v-1)*10^-6)/4.18
ih=540-w
//results
printf(' internal latent heat of steam= % 1f cal',ih)
