clc
//Chapter 9:Phase locked loop Analysis 
//Example 9.9 page no 380
disp('since the phase margin without time delay is 50 degree, a 10 degree phase lag can be introduced by the time delay at the crossover frequecy.That is ,')
Wc=1000//crossover frequency
thetaT=-0.174
T=thetaT/Wc//time delay
mprintf('The time delay is %3.2e ',T)
