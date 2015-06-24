//Example 2.5
//computing final value of function F using scilab
clear;clc;
xdel(winsid());

s=%s;
n5=(8*s+5);
d5=s*(s+1)*(s^2+4*s+5);
F=n5/d5
F1=s*F
//for final value limit "t" tends to infinity and limit "s" tends to zero.
//When s=0, the value of F1 will be "(5/5)=1"
for s=0
    disp("Final value=1") 
end
