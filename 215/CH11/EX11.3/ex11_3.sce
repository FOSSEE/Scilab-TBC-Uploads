clc
//Example 11.3
//Calculate the Average Power
printf("Given")
disp('ZL=8-i*11 ohm, I=5(20 deg)A')
R=8;Iamp=5;
//We need to calculate the average power
//In the calculation of average power the resistance part of impedace only occurs
//Let P be the average power
P=0.5*Iamp^2*R
printf("Average Power=%d W \n",P)