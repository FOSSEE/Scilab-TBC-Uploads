//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 7


clear;
clc;


//Given:
P1 = 1; //initial pressure (bar)
T1 = 300; //initial temperature (K)
P2 = 10; //final pressure (bar)
gama = 1.3; //gama for CO2
V_rate = 100; //volumetric flow rate (m^3/h)

//To calculate work required and temperature after compression
Ws = (gama/(gama-1))*P1*10^5*(V_rate/3600)*(1-(P2/P1)^((gama-1)/gama));
mprintf('The work required is %f kW',-Ws/1000);

//Using equation 3.23 (Page no.49)
T2 = T1*((P2/P1)^((gama-1)/gama));
mprintf('\nTemperature of gas after compression is %f K',T2);

//end