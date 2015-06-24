//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.2
//calculation of average speed and instantaneous speed

//given data
function s=f(t)
    s=2.5*t^2;
endfunction
t=5; //time (in s)

//calculation
vav=f(t)/t; //average speed(in m/s)
vinst=derivative(f,t); //instantaneous speed(in m/s)

disp(vav,'the average speed(in m/s) of the particle is');
disp(vinst,'the instantaneous speed(in m/s) of the particle is');
