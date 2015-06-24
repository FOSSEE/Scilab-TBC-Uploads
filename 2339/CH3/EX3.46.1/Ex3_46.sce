clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=150;
T1=17+273;
P2=750;
n=1.3;
m=1;
R=0.287;
Cp=1.001;

//Calculations
T2=T1*((P2/P1)^((n-1)/n));
printf('The final temperature: %2.1f K',T2);
printf('\n');
W=m*R*(T1-T2)/(n-1);
printf('Work done: %2.2f kJ/kg',W);
printf('\n');
Cv=Cp-R;
U=m*Cv*(T2-T1);
printf('Change in internal energy: %2.2f kJ/kg',U);
printf('\n');
G=Cp/Cv;
Q=((G-n)/(G-1))*W;
printf('Amount of heat transfer: %2.2f kJ/kg',Q);
printf('\n');
H=m*Cp*(T2-T1);
printf('Change in enthalpy: %2.2f kJ/kg',H);
printf('\n');
