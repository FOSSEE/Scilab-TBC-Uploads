clc;funcprot(0);//EXAMPLE 17.10
// Initialisation of Variables
Db=0.7;.............................//Diameter of brake pulley in m
d=0.025;............................//Diameter of the rope in m
W=50;...............................//Load on the tight side of the rope in kg
S=50;...............................//Spring balance reading in N
N=900;..............................//Engine rpm
mf=4;...............................//Rate of fuel consumption in kg/h
C=44000;............................//Calorific value of fuel in kJ/kg
g=9.81;.............................//Acceleration due to gravity in m/s^2
//Calculations
BP=(((W*g)-S)*%pi*(Db+d)*N)/(60*1000);........................//Brake power in kW
bsfc=mf/BP;...................................................//Brake specific fuel consumption in kJ/hW-h
disp(bsfc,"Brake specific fuel consumption (in kJ/hW-h)")
etathB=(BP*3600)/(mf*C);.............................................//Brake thermal efficiency
disp(etathB*100,"Brake thermal efficiency:")
