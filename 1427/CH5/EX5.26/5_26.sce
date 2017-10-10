//ques-5.26
//Calculating amount of Ammonia and Ammonium chloride required
clc
pH=9;//pH of buffer
t=0.6;//total concentration of buffer (in mol/L)
pOH=14-pH;
pKb=4.7;//for ammonia
a=pOH-pKb;//a=log10(x/0.6-x); x=[NH4Cl]
x=1.2/3;
printf("Amount of ammonia required is %.1f mol/L and ammonium chloride required is %.1f mol/L.",x/2,x);

