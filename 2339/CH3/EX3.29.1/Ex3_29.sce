clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.1;
V3=V1;
P1=10;
T1=200+273;
P2=3;
R=0.287;
G=1.4;
Cv=0.718;

m=(P1*100*V1)/(R*T1);
T2=T1*((P2/P1)^((G-1)/G));
V2=V1*((P1/P2)^((1)/G));
T3=T2;
P3=(P2*V2)/V3;
printf('Pressure after Isothermal Compression: %1.2f bar',P3);
printf('\n');
printf('Temperature after isothermal compression: %1.2f K',T2);
printf('\n');

W1=((P1*100*V1)-(P2*100*V2))/(G-1);
printf('Work Developed during adiabatic expansion: %2.0f kJ',W1);
printf('\n');

W2=(P2*100*V2)*log(V3/V2);
printf('Work of Compression: %1.2f kJ',W2);
printf('\n');

Q=m*Cv*(T1-T3);
printf('Heat supplied in 3rd Process: %1.2f kJ',Q);
printf('\n');

U=m*Cv*(T2-T1);
printf('Change in Internal Energy: %1.2f kJ',U);
printf('\n');

