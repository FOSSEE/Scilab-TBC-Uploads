clc
deff("[e]=func(t)","e=0.20*t-5*10^(-4)*t^2")
t1=0; //0C
e1=func(t1);
t2=100; //0C
e2=func(t2);
t3=70; //0C
e3=func(t3);
t=e3*(t2-t1)/e2-e1;
disp("thermocouple will read")
disp(t)
disp("°C")