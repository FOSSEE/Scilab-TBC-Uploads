clear;
clc;
//Example 1.1
T=300;//((°K)temperature)
//for silicon
B=5.23*10^(15);//Constant (per centimeter cube degree kelvin)
Eg=1.1;//bandgap energy in electrovolt(eV)
k=86*10^(-6);//Boltzmann's constant(eV per degree kelvin)
n_i=B*T^(3/2)*exp(-Eg/(2*k*T));//intrinsic carrier concentration
printf('intrinsic carrier concentration=%f cm^-3',n_i);
