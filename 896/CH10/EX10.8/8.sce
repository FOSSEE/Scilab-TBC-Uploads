clc
//Example 10.8
//Calculate the efficiency of a compressor and the change respective change in temperature
m=100//Kg/hr
M=29//gm/mol
gama=1.4//dimentionless
R=8.314//J/mol/K
T=293.15//K
ratio_P=4//dimentionless
Po=(m/M)*R*T*(gama/(gama-1))*((ratio_P)^((gama-1)/gama)-1)/3600//kW
P_real=5.3//kW
eta=Po/P_real//dimentionless
printf("The efficiency of the compressor is %f\n",eta);
Cp=29.1//J/mol/K
dT_real=P_real*(M/m)*3600/Cp//K
printf("dT_real = %f K\n",dT_real);
dT_isentropic=Po*(M/m)*3600/Cp//K
printf("dT_isentropic = %f K",dT_isentropic);