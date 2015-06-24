clc;
clear;
//Example 4.10
e1=0.05
e2=e1
A1=0.6944;
A2=1;
T1=293  //[K]
T2=90   //[K]
sigma=5.67*10^-8    //[W/m^2.K^4]
D=0.3   //Diameter in [m]

F12=1/(1/e1+(A1/A2)*(1/e2-1))
Q_by_A=sigma*F12*(T1^4-T2^4)    //[W/sq m]
Q=Q_by_A*%pi*(D^2)  //[kJ/h]
Q=Q*3600/1000   //[kJ/h]
lambda=21.44    //Latent heat in [kJ/kg]
m_dot=Q/lambda    //kg/h
printf("\n The liquid oxygen will evaporate at %f kg/h",m_dot);

