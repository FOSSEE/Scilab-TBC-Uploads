//Example 2.26
clc
disp("(1) f = 1 / 2*pi*sqrt(L*C_eq)")
ceq=(100*500)/600
format(7)
disp(ceq,"Where  C_eq(in pF) = C1*C2 / C1+C2 =")
f=(1/(2*%pi*sqrt(40*83.333*10^-15)))*10^-3
format(8)
disp(f,"f(in kHz) =")
disp("(2) The input voltage is not required for the oscillator. The feedback voltage, which is the part of the output voltage is enough to drive the oscillator")
disp("V0 = 10 V")
disp("For Colpitts oscillator, gain = C2 / C1")
gain=500/100
disp(gain,"Therefore,  Gain =")
fv=10/5
disp(fv,"Therefore,  Feedback voltage(in V) = V0 / Gain =")
disp("(3) Minimum gain = C2/C1 = 5")
disp("h_fe(min) = C2/C1 = 5")
disp("(4) Gain = 10 = C2/C1")
c1=500/10
disp(c1,"Therefore,  C1(in pF) =")
disp("(5) For C1 = 50 pF  and  C2 = 500 pF")
ceq=(50*500)/550
format(8)
disp(ceq,"Where  C_eq(in pF) = C1*C2 / C1+C2 =")
f=(1/(2*%pi*sqrt(40*45.4545*10^-15)))*10^-3
disp(f,"f(in kHz) = 1 / 2*pi*sqrt(L*C_eq) =")
