//Example 6.17.
clc
format(6)
beta=49
alpha=beta/(1+beta)
disp("We know that,  alpha = beta/(1+beta)")
disp(alpha,"Therefore, the common base current gain is, alpha = ")
disp("We also know that, alpha = IC / IE")
IE=3*10^-3
IC=alpha*IE
IC1=IC*10^3
disp(IC1,"Therefore,  IC(mA) = alpha * IE = ")