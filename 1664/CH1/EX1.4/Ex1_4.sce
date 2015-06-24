
// Example No.1.4.
// Page No.29.
clc;clear;
f = 2*10^(6);//frequency of transducer -[Hz].
cosq = cosd(30);//Angle of inclination of the probe -[degree].
c = 800;//Velocity of ultrasonic wave -[m/s].
v = 3;//Speed of blood -[m/s].
delf = ((2*f*v*cosq)/c);//Doppler shifted frequency.
printf("\nThe Doppler shifted frequency is %3.3e Hz",delf);
