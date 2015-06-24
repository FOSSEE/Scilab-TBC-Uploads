clear all; clc;
disp("Ex 2_7")
f1=400//Magnitude of force F1 in N
f2=250//Magnitude of force F2 in N
f3=200//Magnitude of force F3 in N
p1=45//given angle theta for force F2 from vertical in degrees
p=p1*%pi/180//angle in radian
a=(-1)*f1+f2*sin(p)-f3*(4/5)
FR_x=(-1)*a
FR_y=f2*cos(p)+f3*(3/5)
FR=sqrt(a^2+FR_y^2)
printf('\n\nFR_x = %.1f N = %.1fN leftwards',a,FR_x)
printf('\n\nFR_y = %.1f N upwards',FR_y)
printf('\n\nFR = %.0f N',FR)
theta1=atan(FR_y/FR_x)
theta=theta1*180/%pi
printf('\n\ntheta=%.1f Degrees',theta)
