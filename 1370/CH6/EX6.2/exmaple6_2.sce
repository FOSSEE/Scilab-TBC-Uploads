//example6.2
clc
disp("The rate of change of inductance with deflection is,")
disp("dL/d(theta)=d(12+6(theta)-(theta^2))/d(theta)=6-2(theta) uH/radian= 6-2(theta)*10^-6 H/radians")
disp("From the torque equation,")
disp("theta=(I^2)dL/(2*K*d(theta))")
disp("therefore, theta=(8^2)*[6-2(theta)]*10^-6 /(2*12*10^-6)")
disp("Therefore, 0.375(theta)=6-2(theta)")
t=6/2.375
format(6)
disp(t,"Therefore, theta[in radians]= ")
