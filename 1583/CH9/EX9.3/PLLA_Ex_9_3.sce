clc
close
//chapter 9: Stability Analysis
//Example 9.3 page no 361
//given
clear
wL=258
s=poly(0,'s')
h=syslin('c',(100/(s*(s/wL+1)^2 )))
clf();bode(h,1,1000);
disp('The open loop gain and the phase plots are given .It is seen that the crossover frequency is 15Hz,and the phase margin is 50degree')
disp('We know that the overshoot can be increased by decreasing the phase margin.In fact,in this case selecting wL=233 rad/s corresponding to phase margin of 43.5degree gives an overshoot of 20persent')
