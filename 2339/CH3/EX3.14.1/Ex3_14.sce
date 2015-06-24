clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P2=6;
Cp=1.75;
P1=1;
n=1.3;
T1=30+273;
M=30;
m=2;
Ro=8314.4;
R=(Ro/M)/1000;
printf('The Gas Constant: %3.3f kJ/kg K', R);
printf('\n');
Cv=Cp-R;
G=Cp/Cv;
printf('The value of Gamma: %1.2f ',G);
printf('\n');
T2=(T1)*((P2/P1)^((n-1)/n));
printf('Final Temperature: %3.2f K',T2);
printf('\n');
W=(m*R*(T1-T2))/(n-1);
printf('The work done on the gas: %3.2f kJ',W);
printf('\n');
Q=((G-n)/(G-1))*W;
printf('The Heat Transfer is %3.2f kJ',Q);
printf('\n');
U=m*Cv*(T2-T1);
printf('The change in Internal Energy is %3.2f kJ',U);
printf('\n');
