
//To estimate the voltage and Current during heating
//Page 300
clc;
clear;
l=30; //Length
b=15;//Breadth
t=2; //Thickness
t1=20; //Initial Temperature
t2=180; //Final Temperature
T=10*60; //Time Period in Seconds
f=40*(10^6); //Frequency of supply
w=2*%pi*f; //Angular Frequency
SH=0.35; //Specific Heat Of Wood
Er=5; //Relative Permitivity
Eo=8.854*(10^-12); // Permitivity of free space
pf=0.05; //Power Factor
Eff=90/100; //Efficiency
p=0.55;//Density
A=l*b; //Area of the wooden board
W=(A*t)*p/1000; //Weight of wood in kilograms
H=W*SH*(t2-t1); //Heat required to raise temperature
E=H*4.2/3600; //Energy in  kWhr
P=E*3600/T; //In kilowatts
AP=P*1000/Eff; //Actual Power
C=Eo*Er*A*(10^-2)/t; //Capacitance
phi=acosd(pf); //Power Factor Angle
del=(90-phi)*%pi/180;//In Radian
V=sqrt(AP/(w*C*del)); //Voltage
I=V*w*C; //Current

printf('The Voltage and Current are %g V and %g A respectively\n',V,I)
