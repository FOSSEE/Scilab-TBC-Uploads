//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.4
//calculation of the value of phase constant

//given data
//x = A/2
//x = A *sind((w*t) + delta).......equation

//calculation
//at t=0   delta=asind((A/2)/A)
delta=asind(1/2)
delta1=180-delta//another value of delta
//v = dx/dt = A*w*cosd((w*t) + delta)
//at t=0 , v = A*w*cosd(delta)
m1=cosd(delta)
m2=cosd(delta1)
if(m1>0)
    deltaf=delta//value of v positive at t=0
else
    deltaf=delta1
end

printf('the value of phase constant is %d degree',deltaf)
