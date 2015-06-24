//Example 1_14
clc;
clear;close;

//Given data: 
Iavg=200;//A
period1=2*%pi;
period2=%pi;
Vth1=1.8;//V
I1=200;//A
Vth2=1.9;//V
I2=400;//A
//part (a)
Ploss1=I1*Vth1*period1/2/%pi;//W
disp(Ploss1,"(a) Average power loss (in W) : ");
Ploss2=I2*Vth2*period2/2/%pi;//W
disp(Ploss2,"(b) Average power loss (in W) : ");
