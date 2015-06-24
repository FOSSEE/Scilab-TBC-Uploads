// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 5")
T1=25;//room temperature in degree celcius
T4=2;//winter outside temperature in degree celcius
h1=10;//heat transfer coefficient on inner window surfaces in W/m^2 oc
h4=30;//heat transfer coefficient on outer window surfaces in W/m^2 oc
k=0.78;//thermal conductivity of glass in W/m^2 oc
A=75*10^-2*100*10^-2;//area in m^2
deltax=10*10^-3;//glass thickness in m
disp("R1=thermal resistance for convection heat transfer between inside room (1)and inside surface of glass window(2)=1/(h1*A)")
disp("R2=thermal resistance for conduction through glass between inside of glass window(2)to outside surface of glass window(3)=deltax/(k*A)")
disp("R3=thermal resistance for convection heat transfer between outside surface of glass window(3)to outside atmosphere(4)=1/(h4*A)")
disp("total thermal resistance,R_total=R1+R2+R3 in oc/W")
R_total=1/(h1*A)+deltax/(k*A)+1/(h4*A)
disp("so rate of heat transfer,Q=(T1-T4)/R_total in W")
Q=(T1-T4)/R_total
disp("heat transfer rate from inside of room to inside surface of glass window.")
disp("Q=(T1-T2)/R1")
disp("so T2=T1-Q*R1 in degree celcius")
R1=(1/7.5);
T2=T1-Q*R1
disp("Thus,inside surface of glass window will be at temperature of 9.26 oc where as room inside temperature is 25 oc") 
