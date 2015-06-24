//Ex 3.5
clc;
clear;
close;
format('v',5);
delta_t=0.3/2;//micro second
V1=-3;//V
V2=3;//V
delta_Vo=V2-V1;//V
SR=delta_Vo/delta_t;//V/micro second
disp(SR,"Slew rate is(V/micro second)");
