//ex9
//Shock Wave in a Converging–Diverging Nozzle
clear
clc
//fluid property at exi nozzle
P01=1;//pressure in MPa
P1=0.1278;//pressure in MPa
T1=444.5;//temperature in K
d1=1.002;//density in Kg/m^3
//The fluid properties after the shock (denoted by subscript 2) are related to those before the shock through the functions listed in Table A–33
Ma1=2;
Ma2=0.5774;
P02=0.7209*P01;//stagnation pressure in MPa
P2=4.5*P1;//Static Pressure in MPa
T2=1.6875*T1;//Static Pressure in K
d2=2.6667*d1;//Static Pressure n kg/m^3

printf('(a) Stagnation pressure = %.0f MPa \n',P02);
printf('     Static PRessure = %.4f MPa \n',P2);
printf('     Static Temperature = %.1f K \n',T2);
printf('     static density = %.2f kg/m^3 \n',d2);
//(b)
R=0.287;
Cp=1.005;//specific heat at constant pressure in kJ/kg.K
S=Cp*log(T2/T1)-R*log(P2/P1);//entropy change in kJ/kg.K
printf(' (b) The entropy change across the shock = %.4f kJ/kg.K \n',S);
//(c)
k=1.4;
V2=Ma2*sqrt(k*R*T2*1000);
printf(' (c) Air velocity,V2 = %.0f m/s \n',V2);
ms=2.86;//same as previous example 
printf(' (d) Mass Flow rate  = %.2f kg/sec \n',ms);

