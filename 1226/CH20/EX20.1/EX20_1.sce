clc;funcprot(0);//EXAMPLE 20.1
// Initialisation of Variables
v1=1;.........//Volume of air taken in m^3/min
p1=1.013;...............//Intake pressure in bar
t1=288;...............//Intake temperature in K
p2=7;......................//Delivery pressure in bar
n=1.35;..............//Adiabatic index
R=287;..............//Gas constant in kJ/kgK
//Calculations
m=(p1*v1*10^5)/(R*t1);..............//Mass of air delivered per min in kg
t2=t1*((p2/p1)^((n-1)/n));...........//Delivery temperature in K
iw=(n/(n-1))*m*R*(t2-t1);............//Indicated work in kJ/min
IP=iw/(60*1000);....................//Indicated power
disp(IP,"Indicated power in kW:")
