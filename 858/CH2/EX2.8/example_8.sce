clc
clear 
printf("example 2.8 page number 73\n\n")

//to find molarity,molality and normality

w_H2SO4=0.15    //in gm/1gm solution
density=1.10   //in gm/ml
m=density*1000;   //mass per liter
weight=m*w_H2SO4;   //H2SO4 per liter solution
molar_mass=98;

Molarity=weight/molar_mass;
printf("Molarity = %f mol/l\n\n",Molarity)

equivalent_mass=49;
normality=weight/equivalent_mass;
printf("Normality = %f N\n\n",normality)

molality=176.5/molar_mass;
printf("Molality = %f",molality)
