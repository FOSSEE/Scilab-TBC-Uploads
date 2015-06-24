//Initilization of variables
t=[0,1,2,3,4,5,6] //s
//Solving the Differential Equations we obtain
s=(t+1)^3 //ft
v=3*(t+1)^2 //ft/s
a=6*(t+1) //ft/s^2
//Plotting
subplot(221)
plot(t,s)
xlabel('t(s)')
ylabel('s(ft)')
subplot(222)
plot(t,v)
xlabel('t(s)')
ylabel('v(ft/s)')
subplot(223)
plot(t,a)
xlabel('t(s)')
ylabel('a(ft/s^2)')
//Result
clc
printf('The result are the gplots that have been generated')
