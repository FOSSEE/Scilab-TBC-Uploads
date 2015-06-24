clear;
clc;

//Example9.5[Heat Transfer through a Spherical Enclosure]
//Given:-
Di=0.2;//Inner Diameter[m]
Do=0.3;//Outer Diameter[m]
Ti=320,To=280;//The surface temperatures of two spheres enclosing the air[K]
Tavg=(Ti+To)/2;//[K]
//Properties at Tavg
k=0.02566;//[W/m.K]
Pr=0.7290;//Prandtl Number
nu=1.58*10^(-5);//[m^2/s]
b=(1/Tavg);
g=9.81;//[m/s^2]
//Solution:-
Lc=(Do-Di)/2;//Characteristic length[m]
Ra_L=g*b*(Ti-To)*(Lc^3)*Pr/(nu^2);
disp(Ra_L,"The Rayleigh Number is")
Fsph=Lc/(((Di*Do)^4)*((((Di^(-7/5))+(Do^(-7/5))))^5));
keff=0.74*k*((Pr/(0.861+Pr))^(1/4))*((Fsph*Ra_L)^(1/4));//[W/m.K]
disp(Fsph,keff)
Q=keff*(%pi*Di*Do/Lc)*(Ti-To);//[W]
disp("W",Q,"The rate of heat transfer between the spheres is")