clc;funcprot(0);//Example 3.18
//Initilisation of Variables
Ti=175;...//Initial temparature of cylindrical bar in degrees celcius
Do=0.06;....//diameter of bar in m
r=0.015;....//Radial position of the bar in m
L=0.03;....//Height of bar in cm
h=250;...//heat transfer coefficient on surface of the bar in W/m*K
Ta=25;...//Ambient air temparature in degrees celcius
t=60;....//time for measuring temparature in s
K=200;.....//thermal conductivity of bar in W/m K
al=8.4*10^-5;.....//thermal diffucivity of bar in m^2/s
d=2707;.....//density of bar in kg/m^3
C=896;.....//specific heat of bar in J K
//calculations
ro=Do/2;.....//Radius of rod in m
teta1=0.7;....//Value got from hesler chart from 1/Bi=26.7 and Fo=5.6
teta2=0.6;....//Value got from hesler chart for slab from 1/Bi=53.3 and Fo=22.4
teta3=0.95;....//Value got from the position correction chart for r/ro=5 and 1/Bi=26.7
teta4=teta1*teta3;....//Realtion for dimentionless temparature for infinate plate
teta5=0.98;....//Value got from the position correction chart for x/L=0.47 and 1/Bi=53.3
teta6=teta2*teta5;....//Realtion for dimentionless temparature for infinate cylinder
teta7=teta4*teta6;.....//Realtion for dimentionless temparature for cylinder
T=(teta7*(Ti-Ta))+Ta;.....//Temparature at r=1.5 cm and x=1 cm in degrees celcius
qic=0.3;....//For an infinate cylinder Bi=0.04 and Bi^2Fo=0.09
qip=0.4;....//For an infinate cylinder Bi=0.02 and Bi^2Fo=0.08
qc=qic+(qip*[1-qic]);.....//
V=%pi*ro^2*L;....//volume of rod in m^3
Qoc=(d*V*C*(Ti-Ta))/1000;....//Heat transfer in bar in kJ
Q=qc*Qoc;.....//Actual heat loss in 1 min in kJ
disp(T,"Temparature at r=1.5 cm and x=1 cm in degrees celcius:")
disp(Qoc,"Actual heat loss in 1 min in kJ:")
