clc
//initialisation of variables
dl=0.0272//mm
p=500//kg
f=181.2//mm^2
l=200//mm
//CALCULATIONS
sig=p/f//kg/mm^2
epl=dl/l//kg/mm^2
E=(p*l)/(f*dl)//kg/mm^2
//RESULTS
printf('the modulus of elasticity E=% f kg/mm^2',E)
