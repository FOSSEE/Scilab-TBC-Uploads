//Example 12_5
clc;clear;funcprot(0);
//Properties
C_p=1.005;// kJ/kg.K
k=1.4;//The specific heat ratio
R=0.287;//kJ/kg.K
//Given values
P_i=1;// MPa
T_i=873;// K
V_i=150;// m/s
A_t=.0050;// m^2
P_b1=0.7;// MPa
P_b2=0.4;//MPa

//Calculation
T_0i=T_i+((V_i^2/(2*C_p)))/1000;// K
P_0i=P_i*(T_0i/T_i)^(k/(k-1)); // MPa
T_0=T_0i;// K
P_0=P_0i;// K
//P_cr=P*/P_0
P_cr=(2/(k+1))^(k/(k-1));

//(a)
P_br=P_b1/P_0;
P_t=P_b1;
//From table A-13 
Ma_1=0.778;
T_cr=0.892;// T_cr=T_t/T_0
T_t=0.892*T_0;
rho_t=P_t*1000/(R*T_t);// kg/m^3
V_t=Ma_1*sqrt(k*R*T_t*1000);// m/s
m=rho_t*A_t*V_t;//kg/s
printf(' (a) The mass flow rate through the nozzle,m=%0.2f kg/s\n',m); 

//(b)
P_br=P_b2/P_0;
//P_br is less than the critical-pressure ratio, 0.5283.Therefore, sonic conditions exist at the exit plane (throat) of the nozzle, and Ma =1.
m_1=(A_t*P_0*1000*sqrt(k/(R*T_0))*(2/(k+1))^((k+1)/(2*(k-1))))*sqrt(1000);// kg/s
printf(' (b) The mass flow rate through the nozzle,m=%0.2f kg/s\n',m_1);
// The answer vary due to round off error

