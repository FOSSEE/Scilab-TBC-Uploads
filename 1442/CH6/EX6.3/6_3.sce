clc
//initialisation of variables
h= 2676.2 //kJ/kg
hf= 721.11 //kJ/kg
hg= 2679.1 //kJ/kg
vf= 0.001115 //m^3/kg
vg= 0.2404 //m^3/kg
//CALCULATIONS
x= (h-hf)/(hg-hf)
v1= vf+x*(vg-vf)
//RESULTS
printf (' quantity = %.4f ',x)
printf (' \n specific volume = %.4f m^3/kg',v1)
