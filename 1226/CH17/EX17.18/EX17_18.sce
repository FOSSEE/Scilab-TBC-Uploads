clc;funcprot(0);//EXAMPLE 17.18
// Initialisation of Variables
BP=30;........................//Brake power in kW
pmi=8;.........................//Mean effective pressure in bar
etamech=0.8;....................//Mechanical efficiency
n=4;............................//No of cylinders
N=2500;.........................//Engine rpm
rld=1.5;........................//Ratio of length and stroke
etabth=0.28;......................//Brake thermal efficiency
k=1;..........................//Two stroke engine
C=43900;.........................//Calorific value of fuel in kJ/kg
//calculations
IP=BP/etamech;........................................//Indicated power in kW
D=((IP*6*4)/(pmi*n*rld*(%pi)*N*k*10))^(1/3);............//Engine bore in m
L=rld*D;..............................................//Engine stroke in m
disp(D*1000,"Engine bore (in mm):")
disp(L*1000,"Engine stroke (in mm):")
mf=BP/(etabth*C);..............................//Fuel consumption in kg/s
disp(mf*3600,"Fuel consumption in (kg/h):")
