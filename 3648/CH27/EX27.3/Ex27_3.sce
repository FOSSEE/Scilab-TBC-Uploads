//Example 27_3
clc();
clear;
//To calculate the energy required to change the mass of a system
c=3*10^8        //units in meters/sec
m=1.66*10^-27    //Units in g
e=m*c^2        //Units in J
e=e/(1.6*10^-19)*10^-6      //Units in MeV
printf("The energy required to change the mass of a system is=%.1f MeV",e)
//In text book answer is printed wrong as e=931.5Mev the correct answer is933.7 MeV
