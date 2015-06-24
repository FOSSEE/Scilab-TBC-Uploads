clear;
clc;

//Example4.5[Cooling of a long Stainless Steel Cylindrical Shaft]
//Given:-
Ti=600;//Temperature of cylinder just after taking it out of the oven[degree Celcius]
h=80;//average heat transfer coefficient[W/m^2.degree Celcius] 
t=45*60;//Time for cooling[seconds]
r=0.1;//Radius of cylinder[m]
l=1;//Length of cylinder[m]
//Properties of stainless steel cylinder
k=14.9;//Thermal conductivity[W/m.degree Celcius]
rho=7900;//Density[kg/m^3]
Cp=477;//Specific Heat Capacity[J/kg.degree Celcius]
a=3.95*(10^(-6));//Thermal diffusivity[m^2/s]
T_f=200;//Ambient temperature[degree Celcius]
//Solution:-
Bi1=(h*r)/k;
tau1=(a*t)/(r^2);
//For biot no=Bi1 and fourier no=tau1,we have
p=0.40;//p=(T(0)-T_f)/(Ti-T_f) 
T_0=T_f+(p*(Ti-T_f));//[degree Celcius]
disp("degree Celcius",T_0,"The center temperature of the shaft after 45 minutes is")
//Determining actual heat transfer
m=rho*%pi*(r^2)*l;//[kg]
Q_max=m*Cp*(Ti-T_f)*(1/1000);//[kJ]
x=(Bi1^2)*tau1;
//For biot no= Bi1 and (h^2)at/(k^2)=x, we have
y=0.62;//y=Q/Q_max 
Q=y*Q_max;//[kJ]
disp("kJ",round(Q),"The total heat transfer from the shaft during 45 minutes of cooling is")
