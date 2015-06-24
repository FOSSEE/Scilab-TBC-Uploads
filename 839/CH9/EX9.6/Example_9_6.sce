//clear//
clear;
clc;

//Example 9.6
//Given
Dt = 2; //[m]
Da = 0.667; //[m]
n = 180/60; //[rps]
T = 20; //[C]
qg = 100; //[m^3/h]
rho = 1000; //[kg/m^3]
mu = 10^-3; //[kg/m-s] 
ut = 0.2; //[m/s]
//(a)
//The power input is calculated and followed by correction of gas effect
Nre = n*Da^2*rho/mu;
//For a flat blade turbine, from Table 9.3
KT = 5.75;
//Using Eq.(9.24)
Po = KT*n^3*Da^5*rho/1000; //[kW] 
At = %pi/4*Dt^2; //[m^2]
//Superficial gas velocity
Vs_bar = At*qg/3600/10 //[m/s]
//From Fig. 9.20 Pg/Po = 0.60
Pg = Po*0.6; //[kW] 
//From Fig.9.7, depth of liquid is equal to diameter of the tank
//Hence, liquid volume
V = %pi/4*Dt^2*Dt; //[m^3]
//The input power per unit volume
PgbyV = Pg/V ; //[kW/m^3]

//(b)
sigma = 72.75; //[g/s^2]
rho_L = 10^-3; //[g/mm]
PgbyV = PgbyV*10^3 ; //[g/mm-s^2]
//Using Eq.(9.46)
//Let x = shi^(0.5)
//solving the equation as quadratic equation
a = 1;
b = -(Vs_bar/ut)^0.5;
c = -0.216*((PgbyV)^0.4)*(rho_L^0.2)/(sigma^0.6)*(Vs_bar/ut)^(0.5);
x = (-b+sqrt(b^2-4*a*c))/(2*a);
shi = x^2;

//(c)
//To find out mean bubble diameter
//Using Eq.(9.44)
Ds_bar = 4.15*sigma^0.6/(PgbyV^0.4*rho_L^0.2)*shi^0.5+0.9 // [mm]

//(d)
//From Eq.(9.40)
aprime = 6*shi/Ds_bar //[mm^-1]
