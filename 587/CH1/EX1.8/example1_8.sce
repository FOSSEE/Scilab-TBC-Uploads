clear;
clc;

//Example1.8[Measuring Convection Heat Transfer coefficient]
//Given:-
T_ambient=15;//Temperature of room[degree Celcius]
T_surface=152;//Temperature of surface of wire[degree Celcius]
L=2;//Length of wire[m]
D=0.003;//Diameter of wire[m]
V=60;//Voltage drop across the current wire[Volts]
I=1.5;//Current flowing in the wire[amp]
//Solution:-
//When steady conditions are reached, the rate of heat loss from the wire equals the rate of heat generation in the wire as a result of resistance heating
Q_=V*I;//[W]
disp("W",Q_,"The rate of heat generated in the wire as a result of resistance heating is")
As=%pi*D*L;//Surface Area of the wire[m^2]
//Using Newton's Law of Cooling
//and assuming all heat loss in wire to occur by convection
h=Q_/(As*(T_surface-T_ambient));//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",h,"The convection Heat Transfer coefficient is" ) 
