//Example 18.10
clc
format(6)
rl=10/(200*10^-3)  // in ohm
lc=1.194/0.02  
disp(rl,"The effective load resistance  RL(ohm) =")
disp("We know that the ripple factor,  gamma = 1.194 / LC")
disp(lc,"i.e.      LC =")
disp("Critical value of L(mH) = RL / 3*omega = 50 / 3*2*pi*f = 53mH")
disp("Taking L = 60 mH (about 20% higher), C will be about 1000 uF")