//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.10w
//calculation of height of balloon when stone reaches ground

//given data
x=-50//height(in m) of the ballon when the stone was dropped
u=5//velocity(in m/s) of the ballon
a=-10//acceleration(in m/s^2) of the ballon

//calculation
//from x=(u*t)+((1/2)*a*t*t) we have -5*t^2 + 5*t + 50 = 0
a=-5//coefficient of t^2
b=5//coefficient of t
c=50//constant

t1=(-b+sqrt((b*b)-(4*a*c)))/(2*a)//value of t
t2=(-b-sqrt((b*b)-(4*a*c)))/(2*a)//value of t

if(t1>0)
    t=t1;
end

if(t2>0)
    t=t2;
end

if(t1>0 & t2>0)
    tn1=t1;
    tn2=t2;
end

tballoon=t;//during this time baloon has uniformly moved upwards
dballoon=u*t;
dtotal=dballoon+(-x);

printf('height of the ballon when the stone reaches ground is %3.2f m',dtotal);
