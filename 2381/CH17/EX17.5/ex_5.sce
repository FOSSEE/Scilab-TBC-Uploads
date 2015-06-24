//Example 5 // Degree of polarization
clc;
clear;
close;
//given data :
thetai=45;// in degree
n=1.5;/// index
thetar=asind(sind(thetai)/n);
Rl=sind(thetai-thetar)^2/sind(thetai+thetar)^2;
Rp=tand(thetai-thetar)^2/tand(thetai+thetar)^2;
D=((Rl-Rp)/(Rl+Rp))*100;
disp(D,"Degree of polarization,D(%) = ")
// answer is wrong in the textbook
