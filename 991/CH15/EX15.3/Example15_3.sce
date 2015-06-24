//Example 15.3
clc
format(4)
L1=38*10^-6
L2=12*10^-6
C=500*10^-12
disp("    fo = 1 / 2*pi*sqrt(L*C)")
L=L1+L2
fo = 1 / (2*%pi*sqrt(L*C))
x1=fo*10^-6
disp("where  L = L1 + L2 = 38*10^-6 + 12*10^-6 = 50*10^-6 and C = 500 pF")
disp(x1,"Therefore,  fo(MHz) = 1 / 2*pi*sqrt(50*10^-6*500*10^-12) =")
beta=L1/L2
format(6)
disp(beta,"Feedback factor,  beta = L1 / L2 =")