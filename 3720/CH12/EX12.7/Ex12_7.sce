// Example 12_7
clc;clear;funcprot(0);
//Given values
P_0=1000;// kPa;
T_0=800;// K
k=1.4;//The specific heat ratio of air 
Ma_2=2;// Exit Mach number
a=20;// Throat area in cm^2
//Properties
R=0.287;// kJ/kg.k

// Calculation
rho_0=P_0/(R*T_0);// kg/m^3
P_0=1;// MPa
//(a)At the throat of the nozzle Ma=1, and from Table A–13 
//P*=P_c;T*=T_c;rho*=rho_c;V*=V_c;c*=c_c;
P_c=0.5283*P_0;// MPa
printf('(a)The throat conditions,P*=%0.4f MPa\n',P_c);
T_c=0.8333*T_0;// K
printf('                          T*=%0.1f K\n',T_c);
rho_c=0.6339*rho_0;// kg/m^3
printf('                          rho*=%0.3f kg/m^3\n',rho_c);
V_c=sqrt(k*R*T_c*1000);// m/s
printf('                          V*=c*=%0.1f m/s\n',V_c);

//(b)For Ma_2=2,by using data from Table A–13
P_e=0.1278*P_0;// MPa
printf('(b)The exit plane conditions,P_e=%0.4f MPa\n',P_e);
T_e=0.5556*T_0;// K
printf('                             T_e=%0.1f K\n',T_e);
rho_e=0.23000*rho_0;// kg/m^3
printf('                             rho_e=%0.3f kg/m^3\n',rho_e);
A_e=1.6875*a;// cm^2
printf('                             A_e=%0.2f cm^2\n',A_e);
Ma_e=1.6330;// Critical Mach number
V_e=Ma_e*V_c;// m/s
printf('                             V_e=%0.1f m/s\n',V_e);
c_e=sqrt(k*R*T_e*1000);// The speed of sound at the exit condition in m/s
V_e=Ma_2*c_e;// m/s

//(c)
m=rho_c*(a*10^-4)*V_c;
printf('(c)The mass flow rate,m=%0.2f kg/s\n',m);
