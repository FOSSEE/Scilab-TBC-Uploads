//Example 1.14
clc
disp("Given A_vf = 120")
disp("A_v = Vo/V_s = Vo/60mV")
disp("and  A_vf = Vo/0.5")
vo=0.5*120
format(3)
disp(vo,"Therefore,  Vo(in V) =")
disp("with  Vo = 60 V we have,")
av=60/(60*10^-3)
format(5)
disp(av,"A_v =")
b=((1000/120)-1)/1000
format(8)
disp("We know that,")
disp("A_vf = A_v / 1+A_v*beta")
disp(b,"Therefore,  beta =")
