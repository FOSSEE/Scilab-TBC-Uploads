

//exapple 11.6 
clc; funcprot(0);
// Initialization of Variable
dt=12.7/1000;
d=1.8/1000;
Q=2.306/10^6;
pi=3.1428;
//calculation
//part 1
Sc=4/dt;
S=6/d;
f=(1+0.5*Sc/S)^2;
U=Q*4/pi/dt^2;//velocity
Ua=f*U;//actual velocity
disp(Ua,"minimum fluidising velocity found using smaller glass column in (m/s):")
//part 2
dt=1.5;
Sc=4/dt;
f=(1+0.5*Sc/S)^2;
Ua=f*U;//actual velocity
disp(Ua,"fluidising velocity found using larger glass column in (m/s):")
