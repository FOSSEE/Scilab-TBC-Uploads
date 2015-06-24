//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.3w
//calculation of average velocity and average acceleration 

//given data
A=1//given value of constant A
B=4//given value of constant B
C=-2//given value of constant C
D=5//given value of constant D
t=4//time(in s)
t1=0//initial time(in s) for calculation of average velocity and average acceleration
t2=4//final time(in s) for calculation of average velocity and average acceleration

function x=f(t)
    x=(A*(t^3))+(B*(t^2))+(C*t)+D
endfunction

function a=f1(t)
        a=(6*A*t)+(2*B)
endfunction

//calculation
v=derivative(f,t)//formula of velocity
na=f1(t)//formula of acceleration 

x1=f(t1);//formula of position of the particle at t1 time 
x2=f(t2);//formula of position of the particle at t2 time
vavg=(x2-x1)/(t2-t1);//formula of average velocity

v1=derivative(f,t1);//formula of velocity of the particle at t1 time 
v2=derivative(f,t2);//formula of velocity of the particle at t2 time
aavg=(v2-v1)/(t2-t1);//formula of average acceleration

printf('\nthe velocity of particle at t=4 s is %3.2f m/s',v);
printf('\nthe acceleration of particle at t=4 s is %3.2f m/s^2',na)
printf('\nthe average velocity of the particle between t=0 s and t=4 s is %3.2f m/s',vavg);
printf('\nthe average acceleration of the particle between t=0 s and t=4 s is %3.2f m/s^2',aavg);

