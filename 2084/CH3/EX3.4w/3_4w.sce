//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.4w
//calculation of distance travelled,displacement and acceleration

//given data
//graph of velocity(in m/s) versus time(in s)

//calculation
d1=(2*10)/2;//distance(in m) travelled during t=0 s to t=2 s = area of OAB
d2=(2*10)/2;//distance(in m) travelled during t=2 s to t=4 s = area of BCD
d=d1+d2;//distance(in m) travelled during t=0 s to t=4 s
dis=d1+(-d2);//displacement(in m) during t=0 s to t=4 s
a1=(10-0)/(1-0);//acceleration(in m/s^2) at t=1/2 s = slope of OA
a2=(-10-0)/(3-2);//acceleration(in m/s^2) at t=2 s = slope of BC

disp(d1,'distance(in m) travelled during t=0 s to t=2 s is');
disp(d2,'distance(in m) travelled during t=2 s to t=4 s is');
disp(d,'distance(in m) travelled during t=0 s to t=4 s');
disp(dis,'displacement(in m) during t=0 s to t=4 s');
disp(a1,'acceleration(in m/s^2) at t=1/2 s');
disp(a2,'acceleration(in m/s^2) at t=2 s');
