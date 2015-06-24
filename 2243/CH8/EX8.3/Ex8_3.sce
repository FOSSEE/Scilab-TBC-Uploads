clc();
clear;
//Given :
mp = 1.007276470 ; // proton mass in u 
mn = 1.008665012; // neutron mass in u
md = 2.013553215; // deuteron mass in u
//E = ( mp + mn - md)*c^2
// 1 u * c^2 = 931.5 MeV , where 1 u = 1.66*10^-27 kg and c = 3*10^8 m/s
E = (mp + mn - md)*931.5; // Binding energy in MeV
printf("Binding energy : %.3f MeV",E);
