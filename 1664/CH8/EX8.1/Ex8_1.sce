
//Example No.8.1
//Page No.231.
clc;clear;
m = 9.1*10^(-31);//mass
n = 2.533*10^(28);//concentration of electrons -[per m^3]
e = 1.6*10^(-19);//Value of electron.
Tr = 3.1*10^(-14);//Relaxation time -[s].
d = m/(n*e^(2)*Tr);//The resistivity of sodium at 0 degree celcius.
printf("\nThe resistivity of sodium at 0 degree celcius is %3.3e ohm m",d);
