clear;
clc;
RPM = 180;
P = 10;// tons
v = 25;// feet per minute
n = 64/100;// efficiency of the crane
f = 5500;// lb/in^2
l = 10;// feet
N = 12*10^6;// lb/in^2
W = P*v*2240/n;// ft-lbs
T = W*12/(2*%pi*RPM);// lb-inches
s = (T/(0.208*f))^(1/3);// inches
theta = 7.11*T*l*12*180/(%pi*N*s^4);// degrees
printf('The size of the shaft is s = %.3f inches',s);
printf('\n The angle of the twist in the shaft for a length of %d feet, theta = %.3f degrees',l,theta);
//there is a round-off error in the answer given in textbook.
