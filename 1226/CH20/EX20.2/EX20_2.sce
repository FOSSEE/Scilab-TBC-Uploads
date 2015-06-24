clc;funcprot(0);//EXAMPLE 20.2
// Initialisation of Variables
N=300;............//Compressor rpm
afr=15;.........//Air fuel ratio
etamech=0.85;....//Mechanical efficiency
etamt=0.9;.......//Motor transmission efficiency
v=1;............//Volume dealt with per min at inlet in m^3/min
rld=1.5;........//Ratio of stroke to diameter
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
IP=iw/(60*1000);....................//Indicated power in kW
vdc=v/N;........//Volume drawn in per cycle in m^3
D=(vdc/((%pi/4)*rld))^(1/3);..........//Cylinder bore in m
disp(D*1000,"Cylinder bore in mm:")
pc=IP/etamech;.........//Power input to the compressor in kW
mp=pc/etamt;..........//Motor power in kW
disp(mp,"Motor power in kW:")
