//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.4
//calculation of the value of radial and tangential acceleration

//given data
t=3//time(in s)
r=20*10^-2//radius(in cm) of the circle

function v1=f(t1)
    v1=2*t1
endfunction

//calculation
v=f(t)
ar=(v*v)/r//radial acceleration
at=derivative(f,t)//tangential acceleration

printf('the value of radial acceleration is %d m/s^2',ar)
printf('\nthe value of tangential acceleration is %d m/s^2',at)
