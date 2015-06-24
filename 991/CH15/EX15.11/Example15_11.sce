//Example 15.11.
clc
format(5)
C=1/(2*%pi*100000*10000) // in farady
x1=C*10^12 //in pF
disp("The operating frequency of a Wien-bridge oscillator is given by")
disp("    fo = 1 / 2*pi*R*C")
disp(x1,"Therefore,  C(pF) = 1 / 2*pi*R*fo =")