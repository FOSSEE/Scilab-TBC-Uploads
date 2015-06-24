//Ex 3.2
clc;
clear;
close;
format('v',5);
V1=-10;//V
V2=10;//V
SR=0.5;//V/micro second
delta_Vo=V2-V1;//V
delta_t=delta_Vo/SR;//micro second
disp(delta_t,"Time taken by op-amp is(micro second)");
