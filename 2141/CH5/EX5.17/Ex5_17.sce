
clc
//initialisation of variables
Te=400 //F
Ti=80 //F
Cp=0.24 //lbm
v=300 //ft/sec
r=2000 //lbm/min
p=54 //lbf/in^2
T1=778//F
R=42.4//ft^2
W=Cp*(Te-Ti)+(v^2)/(2*p1*T1)//Btu/lbm
We=W*r/R//hp
T=Ti+460 //R
T1=Te+460 //R
hi=129.06 //Btu/lbm
he=206.46 //Btu/lbm
p1=32.17//in^2/ft^3
//CALCULATIONS
w=he-hi+(v^2)/(2*p1*T1)//Btu/lbm
we=(w*r)/R//hp
//RESULTS
printf('the power required to drive the compressor =% f Btu/lbm',we)
