clc;
f0=40;
fc1=8;
fc2=(f0)^2/(fc1);
BW=fc2-fc1;
disp('kHz',BW,"BW=")//The answers vary due to round off error
disp('kHz',fc2,"fc2=")//The answers vary due to round off error

