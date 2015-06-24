
clc
//initialisation of variables
p=715000//lbm
P=1850//lbf/in^2
t=415 //f
p1=1320 //lbf/in^2
T=925 //F
P1=81000 //kw
r=59000 //lbm/hr
v=14310 //Btu/lbm
q=(1448.0-302.8)//lbf/in^2
p2=3412//lbf/in^2
//CALCULATIONS
Nth=(p/r)*(q)/v*100//per cent
nth=(P1*p2)/(r*v)*100 //per cent
//RESULTS
printf('The efficiencny of steam  generator and over all thermal efficiency of the plant =% f per cent',nth)
