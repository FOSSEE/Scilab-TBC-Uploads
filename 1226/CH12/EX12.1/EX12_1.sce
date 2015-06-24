clc;funcprot(0);//EXAMPLE 12.1
// Initialisation of Variables

n=6;...............//No of cylinders
BP=125;...............//Brake Power in kW
N=3000;..............//Engine rpm
bsfc=200;............//Brake Specific Fuel Consumption g/kWh
spgr=0.85;.............//Specific Gravity

//Calculations

fc=(bsfc/1000)*BP;.........//Fuel consumption in kg/h
fcpc=fc/n;..................//Fuel consumption per cylinder
FCPC=(fcpc/60)/(N/2);................//Fuel Consumption per cycle in kg
VFIC = (FCPC*1000)/spgr;...................//Volume of fuel injected per cycle in cc
disp(VFIC,"Volume of Fuel Injected per Cycle (cc):")



