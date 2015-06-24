//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.6w
//calculation of the displacement of the particle

//given data
//given equations are
//y1 = (1.0 cm)*sin((3.14 cm-1)*x - (157 s^-1)*t)...........(1)
//y2 = (1.5 cm)*sin((1.57 cm-1)*x - (314 s^-1)*t)...........(2)

//calculation
function y1=f1(t,x)
    y1=1*sin((3.14*x)-(157*t))
endfunction

function y2=f2(t,x)
    y2=1.5*sin((1.57*x)-(314*t))
endfunction

x=4.5//given value of x(in cm)
t=5*10^-3//given value of t(in s)
//y = y1 + y2.......net displacement
y=f1(t,x)+f2(t,x)

printf('the displacement of the particle at x=4.5 cm and t=5.0 ms is %3.2f cm',y)
