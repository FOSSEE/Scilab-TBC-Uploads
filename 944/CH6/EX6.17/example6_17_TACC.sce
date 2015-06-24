//example 6.17

clear;
clc;

//Given:
m2=1.35;//mass of a macromolecule[gm]
V=100;//volume of solution[cm^3]
R=82;//Universal gas constant[atm.cm^3.K^-1]
T=300;//Temperature[K]
II=9.9;//osmotic pressure of the solution[cm]
d=1;//density
p=1013250;//Atmospheric pressure
g=980.67;//gravitational field


//To find the molar mass of macromolecule
a=m2*R*T*p;
b=V*9.9*d*g;
M2=a/b;//molar mass of macromolecule
printf(" M2 = molar mass of macromolecule , therefore M2 = %f g.mol^-1",M2);





