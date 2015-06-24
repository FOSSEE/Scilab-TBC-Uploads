// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-1,Example 3,Page 7
//Title:Pressure drop
//================================================================================================================
clear 
clc

//INPUT
rho_water=1000;//density of water flowing through the pipeline in kg/m^3
rho_manomtr=1595;//density of manometric fluid (carbon tetrachloride) in kg/m^3
l=40;//length between the selected sections in cm
theta=45;//inclination of the manometer in degrees
g=9.81;//acceleration due to gravity in m/s^2

//CALCULATION
delp=(l/100)*sin((theta*%pi)/180)*g*(rho_manomtr-rho_water);//calculation of pressure drop between the required sections in Pa

//OUTPUT
mprintf('\n The pressure drop between the required sections= %f Pa',delp);

//===============================================END OF PROGRAM===================================================
