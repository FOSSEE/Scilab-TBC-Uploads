clc;funcprot(0);//EXAMPLE 21.19
// Initialisation of Variables
ma=60.2;...........//Rate of air consumption in kg/s
delh=230;.......//Enthalpy change for nozzle in kJ/kg
z=0.96;..........//Velocity co efficient 
afr=70;............//Air fuel ratio
etaco=0.92;...............//Combustion eficiency
CV=42000;..............//Calorific value of fuel in kJ/kg
v=1000;............//Velocity of aircraft in km/h
Ca=v*(5/18);............//Aircraft velocity in m/s
//Calculations
Cj=z*sqrt(2*delh*v);...........//Exit velocity of jet
disp(Cj,"Exit velocity of jet in m/s:")
mf=ma/afr;.........//Rate of fuel consumption
disp(mf,"Rate of fuel consumption in kg/s:")
tp=ma*(Cj-Ca);......//Thrust produced in N
tsfc=mf/tp;.........//Thrust specific fuel consumption in kg/N
disp(tsfc,"Thrust specific fuel consumption in kg/N:")
etath=((Cj^2)-(Ca^2))/(2*(1/afr)*CV*etaco*1000);.........//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")
pp=(ma/1000)*((Cj^2)-(Ca^2))/2;................//Propulsive power in kW
disp(pp,"Propulsive power in kW:")
etapp=(2*Ca)/(Cj+Ca);......................//Propulsive efficiency
disp(etapp*100,"Propulsive efficiency in %:")
etao=((Cj-Ca)*Ca)/((1/afr)*CV*etaco*1000);............//Overall efficiency
disp(etao*100,"Overall efficiency in %:")
