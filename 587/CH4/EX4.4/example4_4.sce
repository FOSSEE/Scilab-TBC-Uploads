clear;
clc;

//Example4.4[Heating of Brass Plates in an Oven]
T_in=20;//Initial uniform temperature of brass plate[degree Celcius]
T_f=500;//Temperature of the oven[degree Celcius]
t=7*60;//[seconds]
h=120;//combined convection and radiation heat transfer coefficient[W/m^2.degree Celcius]
L=0.04/2;//Thickness of plate 2L=0.004[m]
//Properties of brass at room temperature are:-
k=110;//Thermal conductivity[W/m.degree Celcius]
rho=8530;//density[kg/m^3]
Cp=380;//Specific Heat Capacity[J.kg.degree Celcius]
a=33.9*(10^(-6));//Thermal Diffusivity[m^2/s]
//Solution:-
Bi1=1/(k/(h*L));
tau1=(a*t)/(L^2);
//For above values of biot no and fourier no we have
p=0.46;// p=(T0-T_f)/(T_in-T_f),where T0 is temperature of inner surface of plate at time t
x=L;
Bi2=Bi1;
//For above condition of x/L ratio and Biot number we have
q=0.99;//q=(T-T_f)/(T_in-T_f), where T is temperature of outer surface of plate after time t
T=T_f+((p*q)*(T_in-T_f));//[degree Celcius]
disp("degree Celcius",ceil (T),"The surface temperature of the plates when they leave the oven will be")
