//Example 1.9
clc;
//Given
vo = [0 5 -3];
a = [0 0 -2];
t = 5;
//Solution
vx = vo(1,1) + integrate('a(1,1)','t',0,t); // velocity in x direction
vy = vo(1,2) + integrate('a(1,2)','t',0,t); // velocity in y direction
vz = vo(1,3) + integrate('a(1,3)','t',0,t); // velocity in z direction
disp(vx,"vx=");
disp(vy,"vy=");
disp(vz,"vz=");