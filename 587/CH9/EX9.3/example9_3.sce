clear;
clc;

//Example9.3[Optimum Fin Spacing of a Heat Sink]
//Given:-
w=0.12;//width[m]
l=0.18;//length[m]
t=0.001;//thickness[m]
H=0.024;//height[m]
Ts=80;//Bast temperature[degree Celcius]
T_surr=30;//[degree Celcius]
Tf=(Ts+T_surr)/2;//[degree Celcius]
//Properties of air at film temperature
k=0.02772;//[W/m.degree Celcius]
Pr=0.7215;//Prandtl number
nu=1.847*10^(-5);//[m^2/s]
b=1/(Tf+273);//[K^-1]
g=9.81;//[m/s^2]
//Solution:-
Ra_l=g*b*(Ts-T_surr)*(l^3)*Pr/(nu^2);
disp(Ra_l,"The Rayleigh number is")
S_opt=2.714*l/(Ra_l^(0.25));//[m]
disp("mm",S_opt*100,"The optimum spacing is")
n=w/(S_opt+t);
disp(round(n),"The no of for this optimum fin spacing are")
Nu_opt=1.307;//Optimum Nusselt number
h=Nu_opt*k/S_opt;//[W/m^2.degree Celcius]
Q=h*2*round(n)*l*H*(Ts-T_surr);//[W]
disp("W",Q,"The rate of natural convection heat transfer")
