
clc;
clear;
//EXample 4.6
sigma=5.67*10^-8    //[W/m^2.K^4]
e1=0.79;
e2=0.93;
T1=500 ; //[K]
T2=300 ; //[K]
D=70    //[mm]
D=D/1000    //[m]
L=3 //[m]
W=0.3   //Side of conduit [m]
A1=%pi*D*L  //[sq m]
A1=0.659        //Approximate calculation in book in [m^2]
A2=4*(L*W)  //[sq m]
Q=sigma*A1*(T1^4-T2^4)/(1/e1+((A1/A2)*(1/e2-1)))    //[W]
printf("\n Heat lost by radiation is %f W",Q);
