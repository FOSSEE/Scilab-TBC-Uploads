//Example 8.13
clc
disp("For a synchronous counter the total delay that must be allowed between input clock pulses is equal to flip-flop t_pd + AND gate t_pd. Thus T_clock >= 50 + 20 = 70 ns and so the counter has")
fm=(1/(70*10^-9))*10^-6
format(5)
disp(fm,"  f_max(in MHz) =")
disp("We know that MOD-16 ripple counter used four flip-flops. With flip-flop t_pd = 50 ns, the f_max for ripple counter can be given as,")
fma=(1/(4*(50*10^-9)))*10^-6
format(3)
disp(fma,"  f_max(ripple)(in MHz) =")
