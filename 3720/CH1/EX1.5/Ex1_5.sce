//Example 1_5
clc;clear;funcprot(0);
//Given relations
//  x-y=4;
//x^2+y^2=x+y+20;

//Solution
// Assume x=y(1);y=y(2);
function[X]=unknowns(y);
    X(1)=y(1)-y(2)-4;
    X(2)=y(1)^2+y(2)^2-y(1)-y(2)-20;
endfunction
y=[1 1];
z=fsolve(y,unknowns);
printf('x=%0.0f \n',z(1));
printf('y=%0.0f \n',z(2));
