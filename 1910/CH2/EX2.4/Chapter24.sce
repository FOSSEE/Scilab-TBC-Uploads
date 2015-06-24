// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 4")
//To cure the bond at a temprature(To),a radiant source used to provide a heat flux qo W/m^2 
//The back of the substrate is maintained at a temprature T1
//The film is exposed to air at a temprature (Tinf)
//the convective heat transfer coefficient is h.
//Given To=60°C,Tinf=20°C,h=25 W/(m^K)and T1=30°C
To=60;
Tinf=20;
h=25;
T1=30;
//Ls is the thickness of substrate and Lf is thickness of film in mm.
Ls=1.5;
Lf=.25;
//kf and ks are thermal conductivity of film and substrate respectively in W/(m*K)
kf=.025;
ks=.05;
//qo is Heat flux.
//qo=qf+qs where qf and qs are rate of heat transfer per unit surface area through the film and the substrate respectively.
disp("Heat transfer per unit surface area through film qf=(To-Tinf)/((1/h)+(Lf/kf))in W/(m^2)")
qf=(To-Tinf)/((1/h)+(Lf*10^-3/kf))
disp("Heat transfer per unit surface area through substrate qs=(To-T1/(Ls/ks)in W/(m^2)")
qs=(To-T1)/(Ls*10^-3/ks)
disp("Heat flux qo=qs+qf in W/(m^2)")
qo=qs+qf
//If the film is not transparent and all of the radiant heat flux is absorbed at its upper surface then qo=q1+q2
//q1 is rate of heat conduction through the film and substrate
//q2 is rate of convective heat transfer from the upper surface of film to air
disp("If the film is not transparent and all of the radiant heat flux is absorbed at its upper surface then")
disp("Rate of heat conduction through the film and substrate q1=(To-T1)/(Ls/ks) in W/m^2")
q1=(To-T1)/(Ls*10^-3/ks)
//To determine q2 we need to find the temprature(T2) of the top surface 
disp("The temprature of the top surface of the film T2=(q1*(Lf*10^-3/kf))+To in °C")
T2=(q1*(Lf*10^-3/kf))+To
disp("Rate of convective heat transfer from the upper surface of film to air q2=h*(T2-Tinf)in W/m^2")
q2=h*(T2-Tinf)
disp("Heat flux qo=q1+q2 in W/m^2 ")
qo=q1+q2










