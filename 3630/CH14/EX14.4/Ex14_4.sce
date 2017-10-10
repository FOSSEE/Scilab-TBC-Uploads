clc;
f0=60;
fc2=300;
fc1=(60)^2/(300);
BW=fc2-fc1;
disp('kHz',BW,"BW=")//The answers vary due to round off error
disp('kHz',fc1,"fc1=")//The answers vary due to round off error

