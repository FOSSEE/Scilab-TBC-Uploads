//Ex10_8
clc
BW = 500*10^3//bandwidth
A = 200//gain of amplifier
BWf = 2*10^6//bandwidth with negative feedback
disp("B.W = "+string(BW)+"HZ")
disp("A = "+string(A))
disp("(B.W)f = "+string(BWf)+"Hz")
beta = ((BWf/BW)-1)/A//feedback ratio
disp("beta = ((B.W)f/B.W - 1)/A = "+string(beta))
disp("beta = "+string(beta*100)+"%")

// note : using variable "BW" instad of "B.W" ... as, if using B.W the software takes it as a function.
// similarly using "BWf" instead of (B.W)f.
