// Checking the suitability of the potentiometer
clc;
mo=0.8;
sr=250;
sm=sr/mo;
R=sm*1;
disp(R,'resolution of 1mm movement')
Rq=300/1000;
disp(Rq,'resolution required=')
disp('since the resolution of potentiometer is higher than the resolution required so it is suitable for the application')