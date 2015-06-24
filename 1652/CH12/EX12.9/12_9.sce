clc
//Initialization of variables
p=0.1 //m
T=30+273.2  //K
R=0.08206 //lt atm /deg/mol
P1=1 //atm
//calculations
w=1000/p
V=w/1000
dP=R*T/V
P=dP+P1
//results
printf("Osmotic Pressure =%.2f atm ",P)
