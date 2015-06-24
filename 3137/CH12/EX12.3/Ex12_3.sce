//Defining Matrices
t=[0 1 2 3 4 5 10] //s
//Displacement matrix
s=[8*t^2+2*t] //m
//Velocity Matrix
v=[16*t+2] //m/s
//Acceleration Matrix
a=16 //m/s^2
//Plotting the curves
//S-T curve
subplot(221)
plot(t,s)
xlabel('t(s)')
ylabel('s(m)')
subplot(222)
plot(t,v)
xlabel('t(s)')
ylabel('v(m/s)')
subplot(223)
plot(t,a)
xlabel('t(s)')
ylabel('a(m/s^2)')
//Result
clc
printf('The graphs are the solutions')
