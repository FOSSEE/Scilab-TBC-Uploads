//Example 16.8
clc
Energy=1.2*10^3//in J
c=1.1*10^-4//in f
delta_v=sqrt((2*Energy)/c)
disp("solution a")
disp(delta_v,"Energy stored in volt")
disp("solution b")
Energy_deliverd=600//in j
delta_t=2.5*10^-3//in s
p=(Energy_deliverd)/delta_t
disp(p,"power in watt=")