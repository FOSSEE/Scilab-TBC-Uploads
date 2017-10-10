//ques-35.6
//Calculating force constant for CO molecule
clc
w_n=2.143*10^5;//wave number (in /m)
r_m=1.139*10^-26;//reduced mass (in kg)
c=3*10^8;//speed of light (in m/s)
k=4*(%pi)^2*c^2*w_n^2*r_m;
printf("The value of force constant for CO is %d N/m.",k);
