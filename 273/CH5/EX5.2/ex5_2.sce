clc;clear;
//Example 5.2&5.3
//Cyclotron, calculation of magnetic induction,maximum energy

//given values
 f=12*(10^6);//oscillator frequency in Hertz
 r=.53;//radius of the dee in metre
 q=1.6*10^-19;//Deuteron charge in C
 m=3.34*10^-27;//mass of deuteron in kg
 //calculation
B=2*%pi*f*m/q;//
disp(B,'magnetic induction (in Tesla) is:');
E=B^2*q^2*r^2/(2*m);
disp(E,'maximum energy to which deuterons can be accelerated (in J) is')
E1=E*6.24*10^18/10^6;//conversion of energy into MeV
disp(E1,'maximum energy to which deuterons can be accelerated (in MeV) is');