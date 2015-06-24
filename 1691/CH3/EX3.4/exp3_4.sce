//Example 3.4
clc
disp("The components are,")
disp("  C1 = C2 = C = 100 pF")
disp("R1 = R2 = 10 k-ohm")
t1=(0.69*10*100*10^-9)*10^6
format(5)
disp(t1,"Therefore,  T1(in usec) = T2 = 0.69*RC =")
p=2*0.69
disp(p,"Therefore,  Period(in usec) = T = T1+T2 =")
f=1/1.38
format(7)
disp(f,"Therefore,  f(in MHz) = 1/T =")
