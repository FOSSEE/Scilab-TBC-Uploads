clc;funcprot(0);//EXAMPLE 17.9
// Initialisation of Variables
D=0.3;.............................//Bore of engine cylinder in m
L=0.45;............................//Stroke of engine cylinder in m
N=300;.............................//Engine rpm
Pmi=6;.............................//Indicated mean effective pressure in bar
Nbl=1.5;...........................//Net brake load in kN
Db=1.8;............................//Diameter of brake drum in m
d=0.02;............................//Brake rope diameter
k=0.5;.............................//Four stroke engine
n=1;...............................//No of cylinders
//Calculations
IP=(n*Pmi*L*(%pi/4)*D*D*N*k*10)/6;......................//Indicated power in kW
BP=(Nbl*%pi*(Db+d)*N)/60;...............................//Brake power in kW
etam=BP/IP;.............................................//Mechanical efficiency
disp(IP,"Indicated power (in kW):")
disp(BP,"Brake power (in kW):")
disp(etam*100,"Mechanical efficiency (%):")
