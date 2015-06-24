clc;funcprot(0);//EXAMPLE 17.22
// Initialisation of Variables
n=1;.................//No of cylinders
D=0.25;................//Engine bore in m
L=0.4;.................//Engine stroke in m
pmg=7;.................//Gross mean effective pressure in bar
pmp=0.5;...............//Pumping mean effective pressure in bar
N=250;..................//Engine rpm
Db=1.5;................//Effective diameter of the brake in m
Nl=1080;..............//Net load on the brake in N
fh=10;.................//Fuel used per hour in kg
C=44300;...............//Calorific value of fuel in kJ/kg
k=0.5;.................//Four stroke engine
//Calculations
mf=fh/3600;.........................//Fuel used per second in kg
pm=pmg-pmp;.......................//Net pressure
IP=(n*pm*L*(%pi/4)*D*D*N*k*10)/6;..........///Indicated power in kW
disp(IP,"Indicated power (in kW):")
BP=((Nl)*%pi*Db*N)/(60*1000);...............//Brake power in kW
disp(BP,"Brake power (in kW):")
etamech=BP/IP;...........................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency (in %):")
etath=IP/(mf*C);.........................//Indicated thermal efficiency
disp(etath*100,"Indicated thermal efficiency (in %):")
