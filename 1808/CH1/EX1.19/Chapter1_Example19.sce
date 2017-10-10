clc
clear
//INPUT DATA
Sp=8;//mean piston speed in m/s
P=101.325;//atmospheric pressure in kPa
Ra=0.287;//Gas constnat
Ta=303;//assumed temperature in K 
x=0.5;//fuelair ratio
nv=0.92;//volumetric efficiency in percentage
L=0.136;//stroke in m
d=0.125;//borre diameter in m
nc=6;//number of cylinders

//CALCULATIONS
N=(Sp/(2*L));//Speed in rps
Roa=(P/(Ra*Ta));//Density of air in kg/m^3
Vs=(3.14*d^2*L*nc/4);//swept volume 
ma=(nv*Roa*Vs*N)/2;//mass flow rate of air in kg/s
mf=ma*x;//mass flow rate of fuel
mf1=(2*mf*10^2)/(N*nc);//mass of fuel injected per cylinder per cycle in g/cylinder/cycle
 //OUTPUT
 printf('(i)Mass flow rate of air is %3.4f kg/s \n (ii)mass of fuel injected per cylinder per cycle is %3.4f g/cylinder/cycle',ma,mf1)
