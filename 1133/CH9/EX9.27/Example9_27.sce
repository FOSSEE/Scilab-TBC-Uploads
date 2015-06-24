//Example 9.27
clc
disp("T_ON = 0.6 ms,  T = 1 ms")
d=0.6*100
disp(d,"Therefore,  D(in percentage) = t_ON / T =")
disp("Now  D = R_A+R_B / R_A+2*R_B = 0.6")
disp("Therefore,  R_A+R_B = 0.6*R_A + 1.2*R_B")
disp("Therefore,  0.4*R_B = 0.2*R_B")
disp("Therefore,  R_B = 2*R_A      ....(1)")
disp("        f = 1.44 / (R_A+2*R_B)*C = 1/T = 1000")
disp("Choose  C = 0.1 uF")
disp("Therefore,  R_A+2*R_B = 14400")
disp("Using (1),    5*R_A = 14400")
ra=(14400/5)*10^-3
format(5)
disp(ra,"Therefore,    R_A(in k-ohm) =")
rb=2.88*2
disp(rb,"  R_B(in k-ohm) =")
disp("The circuit is shown in the fig.9.101")
