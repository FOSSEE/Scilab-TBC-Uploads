//clear//
clear;
clc;

//Exapmle 9.7
//Given
Dt = 2; //[m]
Da = 0.667; //[m]
n = 180/60; //[rps]
T = 20; //[C]
qg = 100; //[m^3/h]
rho = 1000; //[kg/m^3]
mu = 10^-3; //[kg/m-s] 
ut = 0.2; //[m/s]
At = %pi/4*Dt^2; //[m^2]
//Using values form Example 7.6
//Assuming Pg/Po decresaes to 0.25
PgbyV = 0.25*20490/6.28; //[W/m^3]
//Using Eq.(9.47)
Vs_barc = 0.114*(PgbyV)*(Dt/1.5)^0.17/1000 //[m/s]
qg = Vs_barc*At*3600 //[m^3/h]
//The calculated flooding velocity is beyond the range of the data on which Eq.(9.47)
//was based, so it may not be relaible. Based on Vs_barc, the highest measured value, qg
//would be 850 m^3/h.
