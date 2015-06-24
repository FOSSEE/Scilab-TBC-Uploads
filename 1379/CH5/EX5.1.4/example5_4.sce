

//exapple 5.4 
clc; funcprot(0);
// Initialization of Variable
//part1
//maximizing eqution in theta & get a function
function[y]=theta(x)
    y=(x-.5*sin(2*x))/2/x^2-(1-cos(2*x))/2/x;
endfunction
x=fsolve(2.2,theta);
x=round(x*1000)/1000;
a=(1-cos(x))/2;
printf("velocity will be maximum when stream depth in times of diameter is %.3f",a);
//part2
//maximizing eqution in theta & get a function
function[y]=theta2(x)
    y=3*(x-.5*sin(2*x))^2*(1-cos(2*x))/2/x-(x-.5*sin(2*x))^3/2/x^2 ;   
endfunction
x1=fsolve(2.2,theta2);
x1=round(x1*1000)/1000;
a=(1-cos(x1))/2;
disp("")
printf("vlumetric flow will be maximum when stream depth in times of diameter is %.3f",a);
//part3
r=1;
A=1*x-0.5*sin(2*x);
s=0.35*3.14/180;
P=2*x*r;
C=78.6;
u=C*(A/P)^0.5*s^0.5;
disp(u,"maximum velocity of obtained fluid (m/s):");
//part4
disp(x1,"maximum flow rate obtained at angle in (radians):")
