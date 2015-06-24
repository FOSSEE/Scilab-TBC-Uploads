//Example 9.17
clc
disp("The monostable multivibrator using op-amp produces the pulse waveform. The pulse width is given by,")
disp("  T = RC*ln[1+V_D1/V_sat / 1-beta]")
disp("where  V_D1 = 0.7 V,  +v_sat = +-12 V for op-amp 741")
disp("beta = R2 / R1+R2 = 0.5  with R1 = R2")
t=1/(2*10^3)
format(6)
disp(t,"T(in sec) = 1/f")
disp("Choose  C = 0.1 uF")
disp("Therefore,  5*10^-4 = R*0.1*10^-6*ln[1+(0.7/12)/1-0.5]")
disp("Therefore,  R = 6.7 k-ohm")
disp("Choose  R1 = R2 = 10 k-ohm")
disp("The designed circuit is shown in fig.9.63")
