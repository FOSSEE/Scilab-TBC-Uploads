clc;funcprot(0);//EXAMPLE 21.21
// Initialisation of Variables
t1=288;..........//Temperature of the inlet air into compressor in K
p1=1.01;......//Pressure of the inlet air into compressor in bar
t3=1023;.........//Maximum temperature in K
p2=4.04;.........//Pressure of air at the end of compression in bar
etac=0.82;.......//compressor efficiency
etat=0.78;......//Turbine efficiency
etan=0.88;........//Nozzle efficiency
R=0.287;.........//Gas constant for air in kJ/kgK
ga=1.4;............//Ratio of specific heats
C=42000;..........//Calorific value of fuel in kJ/kg
//Calculations
t2=t1*((p2/p1)^((ga-1)/ga));........//Ideal temperature at the end of compression in K
t21=((t2-t1)/etac)+t1;...........//Actual temperature at the end of compression in K
cp=R*(ga/(ga-1));..............//Specific heat at constant pressure in kJ/kgK
Pc=cp*(t21-t1);.............//Power required to drive the compressor in kW
disp(Pc,"Power required to drive the compressor in kW:")
afr=((C)/(cp*(t3-t21)))-1;....//Air fuel ratio
printf("\n\nAir fuel ratio %f:1\n",afr)
t41=t1+t3-t21;......//Actual temperatur of gases leaving the turbine in K
t4=t3-((t3-t41)/etat);......//Ideal temperature of gases leaving the turbine in K
p3=p2;p4=p3*((t4/t3)^(ga/(ga-1)));.......//Pressure of gases leaving the turbine in bar
disp(p4,"Pressure of gases leaving the turbine in bar:")
p5=p1;t5=t41/((p4/p5)^((ga-1)/ga));
t51=t41-(etan*(t41-t5));
Cj=sqrt(2*cp*(t41-t51)*1000);..............//Jet velocity in m/s
th=Cj*1;..................//Thrust per kg per second in N
disp(th,"Thrust per kg of air per second in N:")
