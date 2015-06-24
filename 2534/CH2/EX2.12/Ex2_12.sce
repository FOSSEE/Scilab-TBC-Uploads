//Ex2_12
clc
Ii = 10
If = 15
delta_t = 2
dI = Ii - If
disp("Ii = "+string(Ii)+"A")//initial current
disp("If = "+string(If)+"A")//final current
disp("delta_t = "+string(delta_t)+"sec")//time taken to change current
disp("dI/dt = "+string(abs(dI)/delta_t)+"Amp/sec.")//calculation for rate of change of current
//wronge answer given in the textbook i.e. 0.5 Amp/sec.
