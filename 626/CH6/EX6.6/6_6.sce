clear;
clc;
close;
disp("Example 6.6")
Kp=0.1
x=poly(0,"x")
pm=1
y=4*(x)^2*pm-Kp+Kp*(x)^2
d=roots(y)
for i=1:1:2

if real(d(i))>0 then
    disp(d(i),"(a)Mole fraction of N2 at equilibrium when pm is 1 atm:")
end
end
//part (b)
Kp=0.1
x=poly(0,"x")
pm=10
y=4*(x)^2*pm-Kp+Kp*(x)^2
d=roots(y)
for i=1:1:2

if real(d(i))>0 then
    disp(d(i),"(b)Mole fraction of N2 at equilibrium when pm is 10 atm:")
end
end
