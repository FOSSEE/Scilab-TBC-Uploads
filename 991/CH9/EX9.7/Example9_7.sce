//Example 9.7.refer fig.9.39
clc
hfe=60
hie=500
IC=3*10^-3
RB=220*10^3
RC=5.1*10^3
VCC=12
VBE=0.6
format(5)
disp("      RB = 200 k-ohm >> hie = 500 ohm")
disp("From h-parameter model")
beta=hfe
Zo=RC
Av=(-hfe*RC)/hie
disp("      Zi = hie = 500 ohm")
disp("      Zo = RC = 5.1 k-ohm")
disp(Av,"      Av = (-hfe*RC) / hie =")
disp("      AI = -hfe = -60")
disp("From re model")
disp("      Zi = beta*re      where re = 26mV / Ie")
Ib=(VCC - VBE)/RB
x1=Ib*10^6
disp(x1,"From the circuit,      Ib(uA) = (VCC - VBE) / RB =")
format(6)
Ie=beta*(51.8*10^-6)
x2=Ie*10^3
disp(x2,"      Ie(mA) = Ic = beta*Ib =")
format(5)
re = (26) / (3.108)
disp(re,"      re(ohm) = 26mV / Ie =")
format(6)
Zi = beta*8.37
disp(Zi,"      Zi(ohm) = beta*re =")
disp("      Zo = RC = 5.1 k-ohm")
Av=int(-RC/re)
disp(Av,"      Av = -RC / re =")
disp("      AI = -beta = -60")