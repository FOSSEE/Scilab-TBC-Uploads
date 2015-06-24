//Example 5_35
clc;
clear;
close;
format('v',4);
//given data : 
Ez=2*10^7;///V/m
//Vz=epsilon*Ez^2/(2*e*NA)
//e*NA=sigp/mu_p; as sigp=NA*e*mu_p
epsilon=16/(36*%pi*10^9);//F/m
mu_p=1800;//cm^2/V-s
sigp=poly(0,'sigp');//Notation : sigp=sigma_p
Vz=epsilon*Ez^2/2*mu_p*10^-6/sigp;//V
disp(Vz,"(a) Breakdown Voltage calculated and proved as ");
format('v',6);
sigma_i=1/45;//(ohm-cm)^-1
sigma_p=sigma_i;//(ohm-cm)^-1//as p-material is intrinsic
Vz=51/sigma_p;//V
disp(Vz,"(b) Vz(V) : ");
sigma_p=1/3.9;//(ohm-cm)^-1
Vz=51/sigma_p;//V
disp(Vz,"(c) Vz(V) : ");
//Part (d)
Vz=1.5;///V
sigma_p=51/Vz;//V
disp(sigma_p,"(d) Resistivity(ohm-cm)^-1 : ");
//Note : Part(b) answer wrong in the book & part(d) not complete.
//Note : sigp is used instead sigma_p as poly support only less than 5 character.
