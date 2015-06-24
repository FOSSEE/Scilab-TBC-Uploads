clear;
clc;

//Example2.16[Heat Conduction through a Spherical Shell]
//Given:-
r1=0.08;//Inner Radius[m]
r2=0.1;//Outer radius[m]
k=45;//Thermal conductivity[W/m.degree Celcius]
T1=200;//Temperature of inner surface[degree Celcius]
T2=80;//Temperarure of outer surface[degree Celcius]
//Solution:-
//Integrating the differential equation twicw we get T(r)=-C1/r+C2, where
C1=r1*r2*(T1-T2)/(r2-r1);
C2=((r2*T2)-(r1*T1))/(r2-r1);
Q_sphere=4*%pi*k*r1*r2*(T1-T2)/(r2-r1);
disp("kW",Q_sphere/1000,"The rate of heat conduction through the container wall is")
