//Example 6.6.
clc
format(6)
beta=100
IC=40
disp("beta = 100 = IC / IB")
IB=IC/beta
disp(IB,"Therefore,    IB(mA) = ")
disp("IE = IB + IC")
IE=IB+IC
disp(IE,"IE(mA) = ")