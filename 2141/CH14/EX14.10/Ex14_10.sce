
clc
//initialisation of variables
P=100 //lbf/in^2
T=600 //F
A=20000//lbm/hr
P1=0.545 //lbf/in^2
P2=54.5 //lbf/in^2
S=1.7581 //Btu/lbm-R
h0=1329.1 //Btu/lbm
T1=460//F
h=1264.0 //Btu/lbm
V=w1*sqrt(h0-h)//ft/sec
v1=9.961 //lbf/in^2
PE=20 //lbf/in^2
sE=1.7581 //Btu/lbm-R
hE=1174.9 //Btu/lbm
vE=21.28 //lbf/in^2
w=3600//lbf/in^2
w1=223.7//ft/sec
//CALCULATIONS
A1=(A*v1)/(w*V)//in^2
VE=w1*sqrt(h0-hE)//ft/sec
Mve=(A*vE)/(w*VE)//ft^2
//RESULTS
printf('The throat area and exit area=% f ft^2',Mve)
