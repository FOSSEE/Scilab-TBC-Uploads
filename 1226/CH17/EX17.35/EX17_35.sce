clc;funcprot(0);//EXAMPLE 17.35
// Initialisation of Variables
n=1;..................//No of cylinders
D=0.2;............//Engine bore in m
L=0.4;..............//Engine stroke in m
Nt=9400;...............//Total no of revolutions 
Ne=4200;...............//Total no of explosions
t=40;...................//Duration of testing in min
Nk=Ne/t;...............//No of explosions
bl=540;...............//Brake load in N
Db=1.6;.................//Diameter of brake wheel in m
d=0.02;................//Diameter of rope in m
gu=8.5;..................//Gas used in m^3/sec
C=15900;...............//Calorific value of fuel in kJ/kg
Vg=(gu/(t*60));.................//Volume of gas used in m^3/sec
aic=550;.....................//Area of indicator diagram mm^2
l=72;.......................//Length of indicator diagram in mm
s=0.8;.....................//Spring number in bar/mm
//calculations
pmi=(aic*s)/l;................//Mean effective pressure in bar
IP=(n*pmi*L*D*D*(%pi/4)*Nk*10)/6;............//Indicated power in kW
disp(IP,"Indicated power (in kW):")
BP=(bl*%pi*(Db+d)*(Nt/t))/(60*1000);...............//Brake power in kW
disp(BP,"Brake power (in kW):")
etaith=IP/(Vg*C);...............//Indicated thermal efficiency
disp(etaith*100,"Indicated thermal efficiency (in %):")
etabth=BP/(Vg*C);...............//Brake thermal efficiency
disp(etabth*100,"Brake thermal efficiency (in %):")
