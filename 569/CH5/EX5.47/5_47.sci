// to prove time constant should be approximately 20T to keep undershoot within 5%
clc;
disp('Let T=1');
T=1;
el=0.95;
tc=-T/log(el);
disp(tc,'time constant')
disp('as T=1 so time constant should be approximately equal to 20T')