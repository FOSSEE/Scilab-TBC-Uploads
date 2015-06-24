//Example 16.6
clc
c1=3*10^-6
c2=6*10^-6
c3=12*10^-6
c4=24*10^-6
delta_v=18
disp("solution a")
c_eq=1/((1/c1)+(1/c2)+(1/c3)+(1/c4))
disp(c_eq,"capacitance in farad=")
q=delta_v*c_eq
disp("solution b")
disp(q,"voltage between battery in c=")