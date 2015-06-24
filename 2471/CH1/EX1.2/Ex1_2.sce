clear ;
clc;
// Example 1.2
printf('Example 1.2\n\n');
printf('Page No. 09\n\n');
// Solution 

// Given
Eo1= 1.775*10^9;// Annular energy consumption of oil in Btu
Btu= 1055;// 1 Btu = 1055 Joules
Eo= Eo1*Btu;// Annular energy consumption of oil in Joules
Eg1= 5*10^3;// Annular energy consumption of gas in Therms
Th= 1055*10^5;//  1 Th = 1055*10^3 Joules
Eg= Eg1*Th;// Annular energy consumption of gas in Joules
Ee1= 995*10^3;// Annular energy consumption of electricity in KWh
KWh= 3.6*10^6;// 1 KWh = 3.6*10^6 Joules
Ee= Ee1*KWh;// Annular energy consumption of electricity in Joules
Et= ( Eo + Eg + Ee);// Total energy consumption
P1= (Eo/Et)*100; // percentage of oil consumption
P2= (Eg/Et)*100; // percentage of gas consumption
P3= (Ee/Et)*100; // percentage of electricity consumption
printf('percentage of oil consumption is %3.1f \n',P1)
printf('percentage of gas consumption is %3.1f \n',P2)
printf('percentage of electricity consumption is %3.1f \n',P3)

