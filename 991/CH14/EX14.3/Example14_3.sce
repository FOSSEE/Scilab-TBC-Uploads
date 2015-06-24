//Example 14.3.
clc
format(6)
A=125
BW=250*10^3
beta=0.04
disp("(a) We have BWf = (1 + A*beta) * BW")
BWf = (1 + (A*beta))*BW
x1=BWf*10^-6
disp(x1,"    BWf(MHz) =")
Af=A/(1+(A*beta))
disp(Af,"Gain with feedback,  Af = A / (1+ A*beta) =")
disp("(b) BWf = (1 + A*beta'') * BW")
disp("1*10^6 = (1 + 125*beta'')*250*10^3")
Bd=3/125
disp(Bd,"Therefore,     beta =")
Bd1=Bd*100
disp(Bd1,"i.e.   beta (in %) =")