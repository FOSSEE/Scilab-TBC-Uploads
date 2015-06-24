//Ex10_2
clc
Av = 50//voltage gain
beta = 0.01//feedback ratio
BW = 100*10^3//bandwidth
disp("Av = "+string(Av))
disp("beta = "+string(beta))
disp("Bandwidth = "+string(BW)+"Hz")
Avf = Av/(1+beta*Av)//gain with negative feedback
disp("Avf = Av/(1+beta*Av) = "+string(Avf))
BWf = BW*(1+beta*Av)//bandwidth with negative feedback
disp("(B.W)f = "+string(BWf)+"Hz")


// note : using variable "BW" instad of "B.W" ... as, if using B.W the software takes it as a function.
// similarly using "BWf" instead of (B.W)f.
