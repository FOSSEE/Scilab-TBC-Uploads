//Example 1.5
clc
disp("(a) beta:        -40 = 20*log[1+beta*A]")
disp("Therefore,  1+beta*A = 100")
b=99/1000
format(6)
disp(b,"Therefore,      beta =")
disp("Gain of the amplifier with feedback is given as")
avf=1000/100
disp(avf,"      A_Vf = A_V / 1+beta*A_V =")
disp("(b) To maintain output power 10 W, we should maintain output voltage constant and to maintain output constant with feedback gain required Vs is")
vsf=10*100*10^-3  // in V
disp(vsf,"      V_sf(in V) = Vs * 100 =")
disp("(c) Second harmonic distortion is reduced by factor 1 + beta*A")
d2f=(0.1/100)*100 // in percentage
disp(d2f,"      D_2f(in percentage) = D_2 / 1+beta*A =")
