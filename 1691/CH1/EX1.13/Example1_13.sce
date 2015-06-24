//Example 1.13
clc
disp("The voltage gain of the amplifier is given as")
av=50/0.2
format(4)
disp(av,"A_v = Vo/V_in =")
disp("We know that,")
b=((0.06/0.01)-1)/250
format(5)
disp(b,"B_2f = B_2 / 1+A_v*beta =")
disp("Therefore,  feedback ratio, beta =")
avf=250/(1+(250*0.02))
format(6)
disp(avf,"A_vf = A_v / 1+A_v*beta =")
vin=50/41.66
format(4)
disp("To produce output voltage of 50 V V_in must be")
disp(vin,"V_in = 50/A_vf =")
