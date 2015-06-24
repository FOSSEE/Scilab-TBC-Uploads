//example 2.1
clc; funcprot(0);
Distance=[2.5,5,7.5,10,15,20,25,30,35,40,50];
Time=10^-3*[11.2,23.3,33.5,42.4,50.9,57.2,64.4,68.6,71.1,72.1,75.5]
//part1
distance=5.25;
time=23e-3;
v1=distance/time;
disp(v1,"speed in m/s");
//part2
distance=11;
time=13.5e-3;
v2=distance/time;
disp(v2,"speed in m/s");
//part3
distance=14.75;
time=3.5e-3;
v3=distance/time;
disp(v3,"speed in m/s");
plot(Distance,Time);
xtitle("distance vs time","Distance in m","time in s");
//part4
xc=10.4;
Ta=65e-3;
Z1=1/2*sqrt((v2-v1)/(v2+v1))*xc;
disp(Z1,"thickness of layer 1 in m");
Z2=1/2*(Ta-2*Z1*sqrt(v3^2-v1^2)/v3/v1)*v3*v2/sqrt(v3^2-v2^2);
disp(Z2,"thickness of layer 2 in m");

