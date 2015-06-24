clear;
clc;

//Example8.5[Heating of water by Resistance Heaters in a tube]
Ti=15;//Initial Temp[degree Celcius]
Tf=65;//Final Temp[degree Celcius]
d=0.03;//Internal diameter[m]
l=5;//length[m]
V=10*10^(-3);//flow rate of water[m^3/s]
Tavg=(Ti+Tf)/2;//[degree Celcius]
//Properties of water at Tavg
rho=992.1;//[kg/m^3]
Cp=4170;//[J/kg.degree Celcius]
k=0.631;//[W/m.degree Celcius]
nu=0.658*10^(-6);//[m^2/s]
Pr=4.32;//Prandtl Number
//Solution:-
Ac=%pi*(d^2)*(1/4);//[m^2]
As=%pi*d*l;//[m^2]
m_=rho*V*(1/60);//[kg/s]
Q_=m_*Cp*(Tf-Ti)/1000;//[kW]
disp("kW",Q_,"The power rating of the heater is")
qs=Q_/As;//[kW/m^2]
disp("kW/m^2",qs,"Heat flux is")
v_avg=V/(Ac*60);//[m/s]
Re=v_avg*d/nu;//[Reynolds Number]
Lt=10*d;//Entry length [m]
Nu=0.023*(Re^(0.8))*(Pr^(0.4));
disp(Nu,"The nussel number is")
h=k*Nu/d;//[W/m^2]
Ts=Tf+(qs*1000/h);//[degree Celcius]
disp("degree Celcius",round(Ts),"The surface temperature of the pipe at the exit becomes")
