clc;funcprot(0);//EXAMPLE 17.16
//Initialisation of Variables
Db=0.75;.....................//Diameter of brake pulley in m
d=0.05;......................//Rope diameter in m
W=400;.......................//Dead load in N
S=50;........................//Spring balance reading in N
cf=4.2;......................//Consumption of fuel in kg/h
N=1000;......................//Engine rpm
C=43900;.....................//Calorific value of fuel in kJ/kg
//Calculations
BP=((W-S)*%pi*(Db+d)*N)/(60*1000);...............//Brake power in kW
bsfc=cf/BP;......................................//Brake specific fuel consumption  in kg/kWh
etabth=BP/((cf/3600)*C);.........................//Brake thermal efficiency
disp(bsfc,"Brake specific fuel consumption  (in kg/kWh):")
disp(etabth*100,"Brake thermal efficiency (in %):")
