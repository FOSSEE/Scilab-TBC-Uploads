clc;funcprot(0);//EXAMPLE 17.19
// Initialisation of Variables
n=6;......................//No of cylinders
pdpc=700*10^(-6);.................//Piston displacement per cylinder in m^3
P=78;............................//Power developed in kW
N=3200;.............................//Engine rpm
mf=27;.............................//Fuel consumption in kg/h
C=44000;...........................//Calorific value of fuel in kJ/kg
afr=12;..............................//Air fuel ratio
p1=0.9;..........................//Intake air pressure
pa=p1;
t1=305;...............................//Intake air temperature
ta=t1;
R=0.287;.....................//Gas constant in kJ/kgK
//Calculations
ma=afr*mf;............................//maaa of air in kg/h
Va=(ma*R*t1)/(p1*100);.............//Volume of air intake in m^3/h
Vs=pdpc*n*(N/2)*60;.....................//Swept volume in m^3/h
etaV=Va/Vs;.............................//Volumetric efficiency
disp(etaV*100,"The volumetric efficiency of the engine (in %):")
etabt=P/(mf*(C/3600));...................//Brake thermal efficiency
disp(etabt*100,"The brake thermal efficiency of the engine (in %):")
Tb=(P*60)/(2*%pi*N);..........................//Brake torque in kNm
disp(Tb,"Brake torque (in kNm):")
