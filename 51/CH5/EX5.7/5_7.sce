clc;
clear;
Q=1000;//ml/s
A2=30;//mm^2
rotv=600;//rpm

//mass in = mass out
w2=(Q*0.001*1000000)/(2*A2*1000);
disp("m/s",w2,"Average speed of water leaving each nozzle when sprinkle head is stationary and when it rotates with a constant speed of 600rpm  =")
