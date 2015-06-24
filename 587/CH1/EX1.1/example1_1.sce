clear;
clc;

//Example 1.1(Heating of a copper ball)

//(a)
//density of the copper ball
rho= 8950;//[kg/m^3]
//Diameter of the copper ball
D=0.1;//[m]
//mass of the ball
m=rho*(%pi/6)*(D^3);//[kg]
//Specific Heat of copper
Cp=0.395;//[kJ/Kg/m^3]
//Initial Temperature
T1=100;//[degree C]
//Final Temperature
T2=150;//[degree C]
// The amount of heat transferred to the copper ball is simply the change in it's internal energy and is given by
// Energy transfer to the system=Energy increase of the system
Q=(m*Cp*(T2-T1));
disp("kJ",Q,"Heat needs to be transferred to the copper ball to heat it from 100 to 150 degree celsius is ")
//b
//Time interval for which the ball is heated
dT=1800;//[seconds]
Qavg=(Q/dT)*1000;//[W]
disp("W",Qavg,"Average Heat Transfer by the iron ball is ")

//(c)
//Heat Flux
qavg=(Qavg/(%pi*(D^2)));//[W/m^2]
disp("W/m^2",qavg,"Average flux is")
