clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
M=27;
P1=1;
T1=60+273;
n=1.3;
Cvm=21;
Ro=8.314;
R=Ro/M;

//Calculations
V1=(R*T1)/(P1*100);
V2=V1/12;
x=V1/V2;
P2=P1*(x^n);
W=((P1*100*V1)-(P2*100*V2))/(n-1);
printf('Work Done: %3.2f kJ/kg',W);
printf('\n');

Cv=Cvm/M;
Cp=Cv+R;
G=Cp/Cv;

Q=((G-n)/(G-1))*W;
printf('Heat Transfer during the process: %3.2f kJ/kg',Q);
printf('\n');
