clc
//Example 11.6
//Calculate the Average power
printf("Given")
disp('Resistor value is 4 ohm, i1=2*cos(10t)-3*cos(20t) A')
R=4;im1=2;im2=-3;
//Let P be the average power delievered
P=0.5*im1^2*R+0.5*im2^2*R
printf("Average power=%d W",P)
