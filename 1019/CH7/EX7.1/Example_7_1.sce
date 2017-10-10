//Example 7.1
clear;
clc;

//Given
w2=4.450;//weight of solute in g
m2=98;//molecular mass of solute in g mol^-1
W1=0.0822;//weight of solvent in kg
w1=82.2;//weight of solvent in g
m1=18;//molecular mass of solvent in g mol^-1
p=1.029;//density of solution in g cm^-3

//To calculate mass percent,mole fraction,mole percent,molarity,molality,normality
P2=(w2/(w1+w2))*100;//Mass percent
mprintf('(a) Mass percent = %f',P2);
x2=(w2/m2)/((w1/m1)+(w2/m2));//Mole fraction
mprintf('\n (b) Mole fraction = %f',x2);
M=x2*100;//Mole percent
mprintf('\n (c) Mole percent = %f',M);
V=(w1+w2)/p;//volume in cm^3
c2=(w2/m2)*(1000/V);//Molarity in mol dm^-3
mprintf('\n (d) Molarity = %f mol dm^-3',c2);
M2=w2/(m2*W1);//Molality in mol kg^-1
mprintf('\n (e) Molality = %f mol kg^-1',M2);
N=(w2/(m2/2))*((1000/V));//normality
mprintf('\n (f) normality = %f',N);
//end