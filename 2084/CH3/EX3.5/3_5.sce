//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.5
//calculation of distance travelled in given time, time taken to reach a particular velocity and distance covered to reach particular velocity 

//given data
u=2.5; //initial velocity(in m/s) of the particle
t=2; //time(in s) for which the particle has travelled
v=7.5; //final velocity(in m/s) of the particle
a=.5; //acceleration(in m/s^2) of the particle

//calculation
x=(u*t)+((1/2)*a*t*t); //Equation of motion with constant acceleration
t1=(v-u)/a; //Equation of motion with constant acceleration
x1=((v*v)-(u*u))/(2*a); //Equation of motion with constant acceleration

disp(x,'distance(in m) travelled by the particle in the first two seconds is');
disp(t1,'time(in s) taken by particle to reach 7.5 m/s velocity is');
disp(x1,'distance(in m) covered by particle to reach 7.5 m/s velocity is');
