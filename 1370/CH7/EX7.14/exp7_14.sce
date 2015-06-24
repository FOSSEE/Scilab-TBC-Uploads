//Example 7.14
clc
disp("In the circuit of the fig.7.47(a), the diode will be forward biased during negative half cycle of a.c. input voltage, and d.c output voltage will be negative w.r.t common ground terminal, as shown.")
disp("(a) For an ideal diode, cut-in voltage V_T = 0, R_T = 0")
dc=-(15/%pi)
format(5)
disp(dc,"D.C. output voltage(in V) = -Maximum value of a.c. input voltage / pi =")
disp("Negative sign indicates that voltage is negative w.r.t ground.")
disp("(b) For a silicon diode, V_T = 0.7 V, R_f is assumed to be zero")
dc1=-((15-0.7)/%pi)
format(5)
disp(dc1,"D.C. output voltage(in V) = -[Maximum value of a.c. voltage-V_T] / pi =")
