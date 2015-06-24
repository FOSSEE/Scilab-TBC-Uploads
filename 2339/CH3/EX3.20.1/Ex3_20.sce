clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=7;
m=3.7;
V1=1.5;
P2=1.4;
V2=4.5;
U=648;
Cv=1.05;

RT1=(P1*100*V1)/(m);
RT2=(P2*100*V2)/(m);

RT=RT1-RT2;
T=(U)/(m*Cv);
R=(RT/T)
printf('The value of R: %1.3f kJ/kg K',R);
printf('\n');

Cp=Cv+R;
H=m*Cp*(-T);
printf('The change in enthalpy is: %4.2f kJ',H);
printf('\n');

T1=RT1/R;
T2=RT2/R;

printf('Initial Temperature: %3.2f K \n',T1);
printf('Final Temperature: %3.2f K \n',T2);
