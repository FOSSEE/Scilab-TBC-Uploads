//example2.33
clc
disp("The generator is shown in the fig 2.67")
s=500/200
disp("I_sh(in A)=(V_t)/(I_sh)=")
l=(25*10^3)/500
disp(l,"I_L(in A)=(P_L)/(V_t)=")
a=50+2.5
disp(a,"Therefore,  I_a(in A)=(I_L)+(I_sh)=")
disp("Brush drop is 1V per brush hence total brush drop = 2V")
e=500+[52.5*(0.03+0.04)]+2
format(8)
disp(e,"a)  E_g(in V)=(V_t)+[(I_a)*(R_a)]+[(I_a)*(R_se)]+(V_brush)=500+[52.5*(0.03+0.04)]+2=")
a=0.03*(52.5)^2
disp(a,"b)  Armature copper loss(in W) = [(I_a)^2]*(R_a) =[(52.5)^2]*(0.03) =")
s=0.04*(52.5)^2
disp(s,"Series field copper loss(in W) =[(I_a)^2]*(R_se) =[(52.5)^2]*(0.04) =")
c=200*(2.5)^2
disp(c,"Shunt field copper loss(in W) =[(I_sh)^2]*(R_sh) =[(2.5)^2]*(200) =")
p=505.675*52.5
format(11)
disp(p,"P_in(in W)= (E_g)*(I_a)=")
disp("P_out = 25W")
t=26547.9375-25
format(10)
disp(t,"Therefore,  Total losses(in W) = (P_in)-(P_out) =")
disp("Now total losses = Copper losses + Iron losses")
disp("Therefore,  1547.9375 = 82.6875 + 110.25 + 1250 + Iron losses")
i=1547.9375-(82.6875+110.25+1250)
format(4)
disp(i,"Therefore,  Iron losses(in W)=")
n=(25000*100)/(26547.9375)
format(8)
disp(n,"%efficiency(n) =[(P_out)/(P_in)]*100 =")
