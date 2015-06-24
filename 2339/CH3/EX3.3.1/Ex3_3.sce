clear
clc

P1=2.75*100;        //Pressure in kPa
V1=0.09         //Volume in m^3
T1=185+273;     //Temperature in Kelvin
T2=15+273;
R=0.29;
Cp=1.005;
Cv=0.715;

m=(P1*V1)/(R*T1);
V2=(T2/T1)*V1;
W=P1*(V2-V1);
printf('The Work Done: %2.3f kJ',W);
printf('\n');
Q=m*Cp*(T2-T1);
printf('The Heat Transfer: %2.3f kJ',Q);
printf('\n');
U=Q-W;
printf('The change in Internal Energy: %2.3f kJ',U);
printf('\n');
