//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.2w
//calculation of the maximum velocity and acceleraion of the particle

//given data
//given wave equation is.....y = (3.0cm)*sind((3.14cm^-1)x - (3.14 s^-1)*t))
t=0//time taken(in s)
t1=.11//time(in s) for acceleration
function yv=f(t)
    yv = (3.0)*sin(-(3.14)*t)//take x=0 (after derivative )..for maximum velocity
endfunction

//calculation
//V = dy/dt
vmax=derivative(f,t)
//vn=(-9.4)*(314)*(sin((3.14*x)+(314*t)))......take x=6(after derivative)...for acceleration at x=6 cm
a=-(2952)*sin(6*%pi-11*%pi)

printf('the maximum velocity is %3.2f m/s',vmax)
printf('\nthe acceleration at t=0.11 s and x= 6 cm is %d cm^2/s',a)
