clear;
clc;

//Example8.3[Flow of Oil in a Pipeline through a Lake]
//Given:-
Ts=0;//Temp of lake[degree Celcius]
Ti=20;//Temp of oil[degree Celcius]
d=0.3;//Diameter[m]
l=200;//length of pipe[m]
//At 20 degree Celcius
rho=888.1;//[kg/m^3]
nu=9.429*10^(-4);//Kinematic viscosity[m^2/s]
k=0.145;//[W/m.degree Celcius]
Cp=1880;//[J/kg.degree Celcius]
Pr=10863;//Prandtl Number
v_avg=2;//[m/s]
//Solution(a)
Re=v_avg*d/nu;
disp(ceil(Re),"The Reynolds number is")
Lt=0.05*Re*Pr*d;//[m]
disp("m",Lt,"The thermal entry length is")
Nu=3.66+((0.065*(d/l)*Re*Pr)/(1+(0.04*(((d/l)*Re*Pr)^(2/3)))));
h=(k*Nu)/d;//[W/m^2.degree Celcius]
As=%pi*d*l;//[m^2]
m_=rho*%pi*((d/2)^2)*v_avg;//[kg/s]
Te=Ts-((Ts-Ti)*exp((-h*As)/(m_*Cp)));//[degree Celcius]
disp("degree Celcius",Te,"Exit temperature of oil is")
//Solution(b):-
ln_del_T=(Ti-Te)/(log((Ts-Te)/(Ts-Ti)));//[degree Celcius]
disp("degree Celcius",ln_del_T,"The logrithmic mean temperature difference is")
Q=h*As*ln_del_T;//[W]
disp("W",Q,"The rate of heat loss from the oil are")
//Solution(c)
f=64/Re;//Friction factor is
del_P=l*rho*(v_avg^2)/(2*d);//[N/m^2]
disp(del_P);
W_pump=m_*del_P/rho;//[kW]
disp("pump just to overcome the friction in the pipe as the oil flows","kW",W_pump/1000,"We need a")