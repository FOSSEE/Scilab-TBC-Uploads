//Example 1.30
clc
disp("(i) Voltage gain with feedback  A_f = A_v/D")
d=1+(0.02*100)
format(2)
disp(d,"Where,  D = 1 + beta*A_v =")
avf=100/3
format(6)
disp(avf,"Therefore,  A_vf =")
vf=0.02*33.33*40
disp(vf,"(ii) Feedback voltage  V_f(in mV) = beta*Vo = beta*A_vf*V_i =")
vo=33.33*40*10^-3
disp(vo,"(iii) Output voltage  Vo(in V) = A_vi*V_i =")
