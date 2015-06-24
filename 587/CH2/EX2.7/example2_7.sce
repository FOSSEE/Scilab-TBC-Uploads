clear;
clc;

//Example2.7[Heat Flux boundary Condition]
//Given:-
Q=800;//Heat transfer rate[W]
D=0.2;//Diameter of pan[m]
L=0.003;//Thickness of pan[m]
T_in=110;//T(L) Temperature of the inner surface of the pan[degree Celcius]
neta=0.9;//Percent of total heat transferred to the pan
//Solution;-
//The inner and outer surfaces of the bottom section of the pan can be represented by x=0 and x=L,respectively. During steady operation the temperature will depend on x only and thus T=T(x).
//Solution:-
actual_Q=neta*Q;//90 percent of the 800W is transferred to the pan at that surface
A=%pi*(D^2)/4;//Bottom Surface Area[m^2]
disp("-k*dT(0)/dx=q_")
q_=actual_Q/(1000*A);//[kW/m^2]
//The boundary condition on this surface can be expressed as
disp("degree Celcius",T_in,"T(L)=")
disp("m",L,"where L=")
