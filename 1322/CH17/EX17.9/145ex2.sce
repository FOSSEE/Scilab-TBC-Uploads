
clear;
clc;
close;
//let x km/hr is avg. speed for 1st journey
//as velocity=distance/time, time for 1st journey is 84/x hrs
//speed for return journey is 84/(x+4).from given data, this is <1/2 hr than the 1st time 
x=poly(0,'x');
//In algebraic form,(84/x)-(84/(x+4))=1/2
y=(84/x)-(84/(x+4))-1/2; //y=0. so, numerator=0
x=roots(numer(y));
//velocity can't be in negatives.take +ve root
disp("avg. speed for 1st journey is x=24km/h")
distance=84;//given
velocity=24;//found
time=distance/velocity;//time for 1st journey
time1=distance/(velocity+4);//time for 2nd journey
mprintf("total_time=%fhours",time+time1)
