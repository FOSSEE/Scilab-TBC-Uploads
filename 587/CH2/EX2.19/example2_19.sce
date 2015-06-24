clear;
clc;

//Example2.19[Heat Conduction in a two layer medium]
//Given:-
k_wire=15,k_ceramic=1.2;//[W/m.degree Celcius]
r1=0.002,r2=0.007;//[m]
e_gen=50*10^6;//[W/m^3]
Ts=45;//[degree Celcius]
//Solution:-
T1=(((e_gen*(r1^2)*log(r2/r1))/(2*k_ceramic))+Ts);//[degree Celcius]
disp("degree Celcius",T1,"The Interface temperature is")
T_wire=T1+((e_gen*(r1^2))/(4*k_wire));//[degree Celcius]
disp("degree Celcius",T_wire,"The temperature at the centreline(r=0) is")
disp("Thus the temperature of the centreline is slightly above the interface temperature")