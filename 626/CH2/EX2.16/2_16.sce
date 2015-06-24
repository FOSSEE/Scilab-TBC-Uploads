clear;
clc;
close;
disp("Example 2.16")
t=0.79 //T2/T1 i.e. turbione expansion
gm=1.4 //gamma
//calculations:
d=t^(1/(gm-1))
//disp(d)
a=1/d //area ratio
p=d^gm //pressure ratio
ndaf=1-p*a
disp(ndaf,"The nondimensional axial force:")