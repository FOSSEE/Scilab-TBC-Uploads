clc;funcprot(0);//EXAMPLE 17.31
// Initialisation of Variables
n=1;..............//No of cylinders
B=0.32;...............//Engine bore in m
L=0.42;..............//Engine stroke in m
N=200;................//Engine rpm
Nk=90;..................//No of explosions per min
v1=11.68;............//Gas used in m^3/h
pg=170;................//Pressure of gas in mm of water 
br=755;................//Barometer reading in mm of Hg
pmi=6.2;.................//Mean effective pressure in bar
C=21600;.......................//Calorific value of gas in kJ/kg
bl=2040;......................//Net load on brake in N
Db=1.2;......................//Brake drum diameter in m
t1=298;.....................//Ambient temperature in Kelvin
//Calculations
IP=(n*pmi*L*(%pi/4)*B*B*Nk*10)/6;..........................//Indicated power in kW
BP=(bl*%pi*Db*N)/(60*1000);.........................//Brake power in kW
etamech=(BP/IP);...................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency (in %):")
p1=br+(pg/13.6);.................//In mm of Hg
p2=760;t2=273;...................//NTP conditions in mm of Hg and Kelvin
v2=(p1*v1*t2)/(p2*t1);
etabth=BP/((v2/3600)*C);..............//Brake thermal efficiency
disp(etabth*100,"Brake thermal efficiency (in %):")
