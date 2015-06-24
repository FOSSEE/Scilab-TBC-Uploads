//Example 2.25
clc
disp("For RC phase shhift oscillator,")
disp("  h_fe = 4K + 23 + 29/K           ...given h_fe = 150")
disp("Therefore,  150 = 4K + 23 + 29/K")
disp("Therefore,  4K^2 - 127K + 29 = 0")
K=poly(0,'K')
p1=4*K^2-127*K+29
t1=roots(p1)
format(6)
disp(t1,"Therefore, K =")
disp("  f = 1 / 2*pi*R*C*sqrt(6+4K)        ...given f = 5 kHz")
disp("Therefore,Choose    C = 100 pF")
r=(1/(2*%pi*(1000*10^-12)*(5*10^3)*sqrt(6+(4*0.23))))*10^-3  // in k-ohm
format(3)
disp(r,"Therefore,  R(in k-ohm) =")
disp("  K = R_C / R  i.e.  R_C = KR = 2.7 k-ohm")
disp("Neglecting effect of biasing resistances assuming them to be large and selecting transistor with h_ie = 2 k-ohm")
disp("  R''_i = h_ie = 2 k-ohm")
disp("Therefore,Last resistance in phase network")
r3=12-2
disp(r3,"  R3 = R - R''_i =")
disp("Using the back to back connected zener diodes of 9.3 V (Vz) each at the output of emitter follower and using this at the output of the oscillator, the output amplitude can be controlled to 10 V i.e. 20 V peak to peak. The zener diode 9.3V and forward biased diode of 0.7 V gives total 10 V")
disp("The designed circuit is shown in fig.2.58")
