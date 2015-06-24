//Example 6.9.
clc
format(7)
IB=0.125
beta=200
disp("beta = 200 = IC / IB")
IC=beta*IB
disp(IC,"Therefore,    IC(mA) = ")
IE=IB+IC
disp(IE,"and    IE(mA) = IB + IC = ")