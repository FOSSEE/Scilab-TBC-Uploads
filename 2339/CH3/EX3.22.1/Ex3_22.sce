clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.091;
P1=2.73;
T1=187+273;
T2=27+273;
Cp=1.005;
Cv=0.718;

R=Cp-Cv;

m=(P1*100*V1)/(R*T1);
Q=m*Cp*(T2-T1);
printf('The Value of heat transferred: %1.2f kJ',Q);
printf('\n')

V2=(T2*V1)/T1;
W=P1*100*(V2-V1);
printf('The Value of Work done: %1.2f kJ',W);
printf('\n')
