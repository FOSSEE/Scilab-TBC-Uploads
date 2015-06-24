//Example 6.8.
clc
format(5)
beta=170
IC=80
disp("We know that (beta),  beta = 170 = IC / IB")
IB=IC/beta
disp(IB,"Therefore,    IB(mA) = ")
format(6)
IE=IB+IC
disp(IE,"and    IE(mA) = IB + IC = ")