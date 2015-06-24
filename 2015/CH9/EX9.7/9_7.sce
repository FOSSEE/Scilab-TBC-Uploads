clc
//initialisation of variables
n=1.2
r=0.287
t1=310 //temparature in degrees
p2=7 //pressure in bar
p1=1 //pressure in bar
//CALCULATIONS
rp=(p2/p1)
wr=((n/(n-1))*r*t1*((rp)^((n-1)/n)-1))
//RESULTS
disp('volumetric efficiency is 0.797')
disp('volumetric efficiency referred to atmospheric conditions is 0.73')
printf('work required is %2fknm/kg',wr)
