clc
f=0.005;
Q=0.07; // m^3/s
g=9.81; // m/s^2

H_f=integrate('32*f*(Q)^(2)/(%pi)^(2)/g/(0.3-0.0666*L)^(5)', 'L', 0, 3);
disp("Fractional head loss =")
disp(H_f)
disp("m")