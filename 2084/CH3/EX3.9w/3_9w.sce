//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.9w
//drawing graph of x versus t, v versus t and a versus t

//given data
h=19.6//height(in m) from where the ball is dropped
//evaluating value for equation    x=(u*t)+((1/2)*a*t^2)

//calculation
t=[0 1 2 2 3 4]
x=[0 4.9 19.6 19.6 4.9 0]//values of x(in m) obtained on evaluating equation    x=(u*t)+((1/2)*a*t^2) along with direction of motion
v=[0 9.8 19.6 -19.6 -9.8 0]//values of v(in m) obtained on evaluating equation    v=u+(a*t) along with direction of motion
a=9.8//constant acceleration(m/s^2)

subplot(221);
plot(t,x);
xlabel('time(in s)')
ylabel('distance(in m)')

subplot(222);
plot(t,v);
xlabel('time(in s)')
ylabel('velocity(in m/s)')

subplot(223);
plot(t,a);
xlabel('time(in s)')
ylabel('acceleration (in m/s^2)')
