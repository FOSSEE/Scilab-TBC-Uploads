//Example 14.1.
clc
format(5)
A=1000
beta=0.04
dA=10
disp("The percentage change in gain of the amplifier with feedback is")
dAf=dA*(1/(1+(A*beta)))
disp(dAf,"    dAf/Af (in %) = dA/A * 1/(1+A*beta)")