clc
disp("Example 7.22")
printf("\n")

//The general equation of exponential decay function is given by
disp("v(t)=A*e(-t/T)+B")
//We need to solve A and B
//At t=0 we get v(0)=A+B    (1)
//at t=inf we get B=1       (2)
//Solving (1) and (2)
A=4;B=1;
T=3;
t=0:0.05:10
v=4*exp(-t/T)+1;
figure
a= gca ();
plot(t,v)
xtitle ('v vs t','t','v');
a. thickness = 2;

