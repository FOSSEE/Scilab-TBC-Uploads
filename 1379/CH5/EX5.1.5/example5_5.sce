

//exapple 5.5 
clc; funcprot(0);
// Initialization of Variable
g=9.81;
h=28/100;
Cd=0.62;
B=46/100;
Q=0.355;
n=2;//from francis formula
//calcualtion
//part1
u=sqrt(2*g*h);
disp(u,"velocity of fluid (m/s):");
//part2a
H=(3*Q/2/Cd/B/(2*g)^0.5)^(2/3);
disp(H,"fluid depth over weir in (m):");
//part2b
//using francis formula
function[y]=root(x)
    y=Q-1.84*(B-0.1*n*x)*x^1.5;
endfunction
x=fsolve(0.2,root);
disp(x,"fluid depth over weir in if SI units uesd in (m):");
//part3
H=18.5/100;
Q=22/1000;
a=15*Q/8/Cd/(2*g)^0.5/H^2.5;
theta=2*atan(a);
disp(theta*180/3.14,"base angle of the notch of weir (degrees)")
