clc;funcprot(0);//EXAMPLE 3.37
// Initialisation of Variables
t1=303;........................//Min temperature in K
t3=1073;........................//Max temperature in K
C=45000;.....................//Calorific value of fuel in kJ/kg
cp=1;....................//Specific heat at constant pressure in kJ/kgK
ga=1.4;........................//Ratio os specific heats
diftc=100;..................//Difference between work done by turbine and compressor in kW
//Calculations
t2=sqrt(t1*t3); t4 = t2;.....//Assumed
mf=diftc/[C*(1-((t4-t1)/(t3-t2)))];................//Fuel used in kg per second
disp(mf,"Rate of fuel consumption in kg/s:")
ma=[diftc-[mf*(t3-t4)]]/[(t3-t4-cp*(t2-t1))];............//Rate of air consumption in kg/s
disp(ma,"Mass flow rate of air  in kg/s:")
