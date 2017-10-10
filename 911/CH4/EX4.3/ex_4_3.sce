//example 4.3//
//Determine the fan-out of IC 74LS04//
clc
//clears the variables//
clear
//clears the screen//
a=.5;
//input loading factor(high state) in UL//
b=.25;
//input loading factor(low state) in UL//
c=10;
//output loading factor(high state) in UL//
d=5;
//output loading factor(low state) in UL//
disp('The HIGH-state fan-out can be computed from: fan-out=output loading factor (HIGH)/input loading factor (HIGH)')
s=c/a;
disp(s,'=')
disp('The LOW-state fan-out can be computed from: fan-out = output loading factor (LOW)/input loading factor (LOW)')
u=d/b;
disp(u,'=')
z=min(s,u)
disp(z,'fan-out')