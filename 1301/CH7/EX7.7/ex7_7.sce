clc;
t0=3600;      //time in sec
t=3601;       //time in sec
c=3*10^8;     //velocity in m/sec
v=c*sqrt((1-(t0/t)^2));     //calculating velocity
disp(v,"Velocity in m/sec = ");     //displaying result