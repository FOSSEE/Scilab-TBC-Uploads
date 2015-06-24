clc;funcprot(0);//EXAMPLE 3.33
// Initialisation of Variables
p1=1;....................//Intake pressure in bar
p2=5;....................//Supply pressure in bar
t3=1000;..................//Supply temperature in Kelvin
cp=1.0425;................//Specific heat at constant pressure in kJ/kgK
cv=0.7662;.................//Specific heat at constant volume in kJ/kgK
ga=cp/cv;..................//Ratio of specific heats
//Calculations
t4=t3*((p1/p2)^((ga-1)/ga));
P=cp*(t3-t4);.....................//Power developed per kg of gas per second in kW
disp(P,"Power developed per kg of gas per second in kW:")
