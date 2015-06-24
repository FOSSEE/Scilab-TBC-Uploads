//Example 2.14
clc
disp("For a tuned collector oscillator,")
disp("f_r = 1 / 2*pi*sqrt(L*C)")
disp("where  L = 30 uH  and f_r to be varied 300 kHz to 1.5 MHz")
disp("For  f_r = 300 kHz")
c1=(1/(4*(%pi^2)*(30*10^-6)*((300*10^3)^2)))*10^9  // in nF
format(7)
disp(c1,"Therefore, C1(in nF) =")
disp("For  f_r = 1.5 MHz")
c2=(1/(4*(%pi^2)*(30*10^-6)*((1.5*10^6)^2)))*10^12  // in pF
format(8)
disp(c2,"Therefore, C2(in pF) =")
disp("Hence C must be varied over 375.264 pF to 9.3816 nF, to achieve frequency variations")
