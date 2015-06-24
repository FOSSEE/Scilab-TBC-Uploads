clear;
clc;

//Example2.14[Heat Conduction in a Solar Heated Wall]
//Given:-
L=0.06;//Thickness of wall[m]
k=1.2;//Thermal Conductivity[W/m.degree Celcius]
e=0.85;//Emissivity
a=0.26;//Solar absorptivity
T1=300;//Temp of Inner surface of Wall[K]
q_solar=800;//Incident rate of solar radiation[W/m^2]
T_space=0;//Temp of outer space[K]
//Solution:-
//Integrating results into
function[f]=temp(T)
    f(1)=(((a*q_solar)-(e*5.67*10^(-8)*T(1)^4))*(L/k))+T1-T(1);
    deff('[f]=temp(T)',['f_1(T)=(((a*q_solar)-(e*5.67*10^(-8)*T(1)^4))*(L/k))+T1-T(1)'])
endfunction

    disp("K",xs,"The outer surface temperature is ")
    //First execute the program with x0=[1] then [xs,fxs,m]=fsolve(x0',temp) then re-execute to obtain correct output as for 1st exeution 'xs' is undefined
    q=k*(T1-xs)/L;
    disp("W/m^2",round(q),"The steady rate of heat conduction through the wall is")