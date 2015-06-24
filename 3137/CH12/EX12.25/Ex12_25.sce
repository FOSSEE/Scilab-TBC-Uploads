//Initilization of variables
theta=linspace(0,360,13)
//Calculations
//Defining everything in terms of matrices 
t=(theta*%pi)/(180*6) //s converting degrees to radians
costheta=cosd(theta) 
sintheta=sind(theta)
x=2*costheta //ft
v=-12*sintheta //ft/s
a=-72*costheta //ft/s^2
//Plotting
subplot(221)
plot(t,x)
xlabel('t(s)')
ylabel('Displacement x(ft)')
subplot(222)
plot(t,v,t,0)
xlabel('t(s)')
ylabel('Velocity v(ft/s)')
subplot(223)
plot(t,a)
xlabel('t(s)')
ylabel('Acceleration a(ft/s^2)')
//Result
clc
printf('The results are the plots')
