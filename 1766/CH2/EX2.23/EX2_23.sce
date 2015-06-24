clc;funcprot(0);//Example 2.23
//Initilisation of Variables
r1=40;....//outer diameter of pipe in mm
t=30;....//thickness of the pipe in mm
t=30;....//thickness of of pipe in mm
K1=0.8;....//thermal conductivity of inner insulation material in W/m*degrees celcius
K2=0.4;....//thermal conductivity of outer insulatoin material in W/m*degrees celcius
T1=200;....//temparature of pipe in degrees celcius
T3=50;....//temparature of oputer insulation in degrees celcius 
L=1;....// length of the pipe in m
//calculations
r2=r1+t;...//diameter of 1st layer in mm
r3=r2+t;...//diameter of 2nd layer in mm
R11=log(r2/r1)/(2*%pi*K1*L);....//resistance of pipe when insulator is outside in degrees celcius/W
R12=log(r3/r2)/(2*%pi*K2*L);....//resistance of pipe when insulator is outside in degrees celcius/W
R21=log(r2/r1)/(2*%pi*K2*L);....//resistance of pipe when insulator is inside in degrees celcius/W
R22=log(r3/r2)/(2*%pi*K1*L);....//resistance of pipe when insulator is inside in degrees celcius/W
Q1=(T1-T3)/(R11+R12);....//heat transfer when the better insulator is outside in W/m
Q2=(T1-T3)/(R21+R22);....//heat transfer when the better insulator is inside in W/m
disp(Q1-Q2,"change in heat transfer rate in W/m:")
