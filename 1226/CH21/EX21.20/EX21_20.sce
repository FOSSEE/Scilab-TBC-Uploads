clc;funcprot(0);//EXAMPLE 21.20
// Initialisation of Variables
v=800;.............//Speed of the turbojet in km/h
etapp=0.55;......//Propulsive efficiency
etao=0.17;.........//Overall efficiency
al=9500;...............//Altitude in m
rhoa=0.17;............//Density of air at the given altitude in kg/m^3
dr=6100;...........//Drag on the plane in N
CV=46000;.........//Calorific value of fuel in kJ/kg
//Calculations
Ca=v*(1000/3600);.........//Velocity of jet in m/s
Cj=((2*Ca)/etapp)-Ca;........//Velocity of gases at nozzle exit relative to the aircraft in m/s
disp(Cj-Ca,"Absolute velocity of jet in m/s:")
ma=dr/(Cj-Ca);............//Rate of air flow in kg/s
Va=(ma/rhoa)*60;..........//Volume of air compresssed per min in kg
disp(Va,"Volume of air compressed in kg/min:")
d=sqrt((Va*4)/(60*%pi*Cj));..........//Diameter of the jet in m
disp(d*1000,"Diameter of the jet in mm:")
tp=dr*(Ca/1000);...........//Thrust power in kW
wt=tp/etapp;................//Turbine output in kW
disp(wt,"Turbine output in kW:")
mf=wt/(etao*CV);...........//Rate of fuel consumption in kg/s
afr=ma/mf;..........//Air fuel ratio
printf("\n\nAir fuel ratio is %f:1",afr)
