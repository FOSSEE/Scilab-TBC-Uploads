//Example 2.4
//computing f'(0+) and f''(0+) using scilab
clear;clc;
xdel(winsid());

s=%s;
n4=(4*s+1);
d4=s*(s^2+4*s+5);
F=n4/d4
// As per initial value theorem, limit "t" tends to zero and limit "s" tends to infinity

//for f'(0+)
F1=s*F+0  

for s=%inf
    disp("f''(0+)=4")
end
//for f''(0+)
s=%s;
F2=((s*(F1))-(4))

for s=%inf
    disp("f''''(0+)=-15")
end
