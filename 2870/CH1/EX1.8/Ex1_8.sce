clc;clear;
//Example 1.8

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
pHg=13570;
h=74/100;//converting height into m from mm

//calculation
Patm=pHg*g*h/1000;//standard  pressure formula
disp(Patm,'the atmospheric pressure in kPa is')
