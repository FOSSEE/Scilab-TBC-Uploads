clc;funcprot(0);//EXAMPLE 20.37
// Initialisation of Variables
m=2.5;..........//Air flow rate in kg/s
p1=1;........//Inlet pressure in bar
t1=290;............//Inlet temperature in bar
C1=80;..........//Inlet Velocity in m/s
p2=1.5;........//pressure after compression in bar
t2=345;............//temperature after compression in bar
C2=220;..........//Velocity after compression in m/s
cp=1.005;...........//Specific heat at constant pressure in kJ/kgK
ga=1.4;............//Ratio of specific heats
R=287;..............//Gas constant for air in kJ/kgK
//Calculations
t21=t1*((p2/p1)^((ga-1)/ga));
wisen=cp*(t21-t1)+((C2*C2)-(C1*C1))/(2*1000);.....//Isentropic work done in kJ/kg
w=cp*(t2-t1)+((C2*C2)-(C1*C1))/(2*1000);.....//Actual work done (in impeller) in kJ/kg
etaisen=wisen/w;...............//Isentropic efficiency
disp(etaisen*100,"Isentropic efficiency in %:")
P=m*w;..........//Power required to drive the coompressor in kW
disp(P,"Power required to drive the coompressor in kW:")
t3=(((C2*C2)-(C1*C1))/(2*1000*cp))+t2;....//Temperature of air after leaving the diffuser in K
p3=p2*((t3/t2)^(ga/(ga-1)));..........//Pressure of air after leaving the diffuser in bar
t31=t1*((p3/p1)^((ga-1)/ga));...........//Delivery temperature from diffuser in K
etao=(t31-t1)/(t3-t1);...............//Overall efficiency 
disp(etao*100,"Overall efficiency in %:")
