//Example 12_3
clc;clear;funcprot(0);
// Given values
m=3;//Mass flow rate in kg/s
T_0=473;// T_0=T_1 in K
P_0=1400;// P_0=P_1 in kPa
P=1200;// kPa
// Properties
C_p=0.846;// kJ/(kg.K)
k=1.289;
R=0.1889;// kJ/(kg.K)

//Calculation
T=T_0*(P/P_0)^((k-1)/k);// k
V=sqrt(2*C_p*(T_0-T)*1000);// m/s
printf('Velocity ,V=%0.1f  m/s\n',V);
rho=P/(R*T);// kg/m^3
printf('Density ,rho=%0.1f kg/m^3\n',rho);
A=(m/(rho*V))*10000;//cm^2
printf('Area ,A=%0.1f cm^2\n',A);
c=sqrt(k*R*T*1000);// m/s
Ma=V/c;
printf('Mach number ,Ma=%0.3f \n',Ma);
// The answer vary due to round off error
