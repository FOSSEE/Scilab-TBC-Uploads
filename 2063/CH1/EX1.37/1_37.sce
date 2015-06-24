clc
clear
//Input data
T1=293;//Temperature of a constant pressure open cycle gas turbine plant in K
T3=1043;//The maximum temperature in K
a=6.5;//The pressure ratio
P=1000;//Power developed by the installation in kW
Cp=1.05;//Specific heat at constant pressure in kJ/kg K
r=1.4;//Isentropic ratio

//Calculations
T2=T1*a^((r-1)/r);//Temperature after the isentropic compression stroke in K
T4=T3/a^((r-1)/r);//Temperature after the isentropic expansion process in K
Wt=Cp*(T3-T4);//Work done by the turbine per kg of air per second in kJ
Wc=Cp*(T2-T1);//Work absorbed by the compressor per kg of air per second in kJ
Wn=Wt-Wc;//Net work output in kJ/s
m=P/Wn;//Mass of fluid circulated per second in kg/s
Q=m*Cp*(T3-T2);//Heat supplied by the heating chamber in kJ/s

//Output
printf('(a)Mass of air circulating in the installation is %3.2f kg/s\n (b)Heat supplied by the heating chamber is %3.1f kJ/s',m,Q)
