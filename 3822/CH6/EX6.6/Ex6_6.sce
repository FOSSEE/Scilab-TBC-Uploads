
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.6
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
lamda=0.8e-6;//wave length of radiation in micrometer
P=0.60e-6;//optical power in microwatts 
ita=0.7;//quantum efficiency of a silicon RAPD is 70%
I=10e-6;//Output of device after avalanche gain in microampere
e=1.6e-19;//
h=6.62e-34;//plank's constant in S.I units
c=3e8;//velocity of light in m/s

R=[(ita*e*lamda)]/[h*c];//Responsivity in A/W
Ip=P*R;//diode current in microampere
M=I/Ip;//multiplication factor
mprintf("\n Responsivity is=%.2f A/W",R);
mprintf("\n Diode current is=%.2f uA",Ip*1e6);//multiplication by 1e6 to convert the unit from ampers to uA
mprintf("\n Multiplication factor is=%.2f",M);
