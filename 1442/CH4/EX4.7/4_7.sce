clc
//initialisation of variables
v= 0.15 //m^3/kg
v1= 0.13857 //m^3/kg
v2= 0.1512 //m^3/kg
v3= 0.050 //m^3//kg
vf= 0.001177 //m^3/kg
vg= 0.09963 //m^3/kg
uf= 906.44 //kJ/kg
ufg= 1693.8 //kJ/kg
//CALCULATIONS
a1= (v-v1)/(v2-v1)
a2= 1-a1
x= (v3-vf)/(vg-vf)
u= uf+x*ufg
//RESULTS
printf ('a2 = %.3f ',a2)
printf ('\n internal energy = %.1f kJ/kg',u)
