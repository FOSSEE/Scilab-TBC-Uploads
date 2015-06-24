clear;
clc;

//Example4.1[Temperature Measurement by Thermocouples]
//Given:-
//Temperature of a gas stream is to be measured by a thermocouple whose junction can be approximated as a sphere
D=0.001;//Diameter of junction sphere[m]
//Properties of the junction
k=35;//Thermal conductivity[W/m.degree Celcius]
rho=8500;//desity[kg/m^3]
Cp=320;//Specific heat[J/kg.degree Celcius] 
h=210;//Convection heat transfer coefficient between junction and the gas[W/m^2.degree Celcius]
//Solution:-
//V=(%pi/6)*(D^3)
Lc=(((%pi/6)*(D^3))/(%pi*(D^2)));//The characteristic length of the junction[m]
Bi=h*Lc/k;//Biot Number
if(Bi<0.1) then,
disp(Bi,"Since Bi=")
disp("is less than 0.1 hence lumped system is applicable and the error involved in this approximation is negligible")
end;
b=h/(rho*Cp*Lc);//Exponent time constant[s^(-1)]
disp("s^(-1)",b,"Time constant for given lumped heat capacity system")
//In order to read 99% of intial temperature difference between the junction and the gas we must have ((T(t)-T_end)/(Ti-T_end))=0.01
t=-1*(log(0.01))/b;
disp("seconds",round(t),"Required time is")