//Example 6.7.
clc
format(6)
beta=150
IE=10
alpha=beta/(beta+1)
disp(alpha,"The common-base current gain, alpha = beta / (beta + 1) = ")
disp("Also,    alpha = IC / IE")
format(5)
IC=alpha*IE
disp(IC,"Therefore,    IC(mA) = ")
disp("the emitter current,    IE = IB + IC")
IB=IE-IC
disp(IB,"Therefore,    IB(mA) = ")