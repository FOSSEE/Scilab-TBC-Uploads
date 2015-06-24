// Ex11_12

clc;
//Given:
density1=1.48;// for chloroform
density2=1.024;// for fricke solution
mole=30*10^-6;// moles of HCl
l=6.023*10^23;// avogadro constant
e=2174;//extension coefficient
OD=0.5633;
d=1;// cell path in cm
// G(Fe+3)=15.5 ions/100 eV
// Solution:

//HCl produced
m1=mole*l;
conc=OD*d/e;// in moles/l
conc1=conc*l;// molecules in 100 min

//This implies amount (conc1) of molecules/l in 10 min for CHCl3 solution will be
conc2=conc1/10;
// energy that would be absorbed by frickes solution to produce conc1 amount of molecules 

e1=conc2*100/15.5;// eV/l
e2=e1/100;// eV per 10 ml

// we know that energy absorbed is proportional to its density

e3=e2*density1/density2;// in eV

//G(HCl)
g=m1*100/e3;

printf("The value of G(HCL) in the radiolysis of CHCl3 is = %f",g)
