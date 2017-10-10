//Example number 9.11, Page number 207

clc;clear;
close;

//Variable declaration
ni=2.5*10**19;      //charge carriers(per m**3)
r=10**-6;    //ratio
e=1.6*10**-19;     //charge(c)
mew_e=0.36;        //electron mobility(m**2/Vs)
mew_h=0.18;       //hole mobility(m**2/Vs)
N=4.2*10**28;     //number of atoms(per m**3)
//Calculation
Ne=r*N;       //number of impurity atoms(per m**3)
Nh=ni**2/Ne;    
sigma=(Ne*e*mew_e)+(Nh*e*mew_h);      //conductivity(ohm m)
rho=1/sigma;     //resistivity of material(per ohm m)
//Result
printf("resistivity of material is %.4e ohm-m",rho)
