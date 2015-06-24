clc
clear

//input data
m=0.32 //Mass flow rate in kg/s
L=140 //Length of the pipe in m
P1=800 //Inlet pressure in N/m^2, wrong units in textbook
T1=288 //Inlet temperature in K
P2=600 //Outlet pressure in N/m^2, wrong units in textbook
f=0.006 //frictional factor
R=287 //Gas constant in J/kg-K

//calculation
//Using Adiabatic Equation d=1/((((((%pi*(d/2)^2)^2)/(2*m^2*R*T))*(P1^2-P2^2))-(log(P1/P2)))/(2*f*L)) and converting into 5th degree polynomial of d
a=(%pi^2*(P1^2-P2^2))/(32*m^2*R*T1) //Coefficient of power 5
b=log(P1/P2) //Coefficient of power 1
c=2*f*L //Coefficient of constant
p5=poly([-c -b 0 0 0 a],'d','coeff') //Solving polynomial of degree 5
d=roots(p5,"e") //Command to find roots

//output
disp("Possible values for diameter of pipe are:\n") //Displays whatever within paranthesis 
disp([d]) //To display roots
printf('\nTherefore Diameter of the pipe is 0.7 m')


