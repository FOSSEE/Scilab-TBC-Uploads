clc
//initialisation of variables
vf= 0.001404 //m^3/kg
x= 0.8
vg= 0.02167 //m^3/kg
uf= 1332 //kJ/kg
ug= 1231 //kJ/kg
hf= 1344 //kJ/kg
hg= 1404.9 //kJ/kg
//CALCULATIONS
v= vf+x*(vg-vf)
u= uf+x*ug
h= hf+x*hg
//RESULTS
printf ('volume = %.5f m^3/kg',v)
printf ('\n internal energy = %.1f kJ/kg',u)
printf ('\n enthalpy = %.1f kJ/kg',h)
