clc;clear;
//Example 1.6

//constants used
pw=1000;//density of water in kg/m^3;
g=9.81;//acceleration due to gravity in m/s^2;
 
//given values
SG=0.85;
h=55/100;//converting height from cm to m
Patm=96;

//calculation
p=SG*pw;
Ptank=Patm+(p*g*h/1000);//calculating pressure using liquid at same height have same pressure
disp(Ptank,'absolute pressure in tank in kPa is')
