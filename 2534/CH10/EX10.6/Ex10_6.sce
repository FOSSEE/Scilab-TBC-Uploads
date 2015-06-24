//Ex10_6
clc
Av = 100//voltage gain
beta = 0.05//feedback ratio
BW = 400*10^3 //bandwidth
disp("Av = "+string(Av))
disp("beta = "+string(beta))
disp("B.W. = "+string(BW)+"Hz")
Af = Av/(1+beta*Av)//gain with negative feedback
disp("Af = Av/(1+beta*Av) = "+string(Af))
BWf = BW*(1+beta*Av)//bandwidth with negative feedback
disp("(B.W)f = "+string(BWf)+"Hz")


// note : using variable "BW" instad of "B.W" ... as, if using B.W the software takes it as a function.
// similarly using "BWf" instead of (B.W)f.
