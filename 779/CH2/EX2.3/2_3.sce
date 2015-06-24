R0 = 2.8; // Resistence at t=0 degree in ohm
R100 = 3.8; // Resistence at t = 100 degree in ohm
a = (R100/R0 - 1)*0.01; // alpha
R = 5.8; // Indicated ressistace in ohm
t = (R/R0 - 1)/a; // Temperature in degree
disp("degree",t,"The temperature when indicated resistance is 5.8 ohm is ")
