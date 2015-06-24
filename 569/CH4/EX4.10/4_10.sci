// Calculate the temperature at a depth of 1000 m
clc;
th0=20;
t=2000;
thr=th0-0.005*(t-50)-0.25*exp(-t/50);
disp(thr,'temperature at a depth of 1000 m (degree C)')