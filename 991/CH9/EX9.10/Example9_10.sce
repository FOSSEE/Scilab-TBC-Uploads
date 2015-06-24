//Example 9.10. refer fig.9.54
clc
disp("We know that IB = VCC-VBE / RB+(1+beta)*RE")
format(5)
IB=((15-0.7)/((75*10^3)+(101*910)))*10^6
disp(IB,"Therefore,  IB(uA) =")  // in uA
disp("IE = (1+beta)*IB = 8.57 mA")
disp("The dynamic resistance is")
re=0.026/(8.57*10^-3)
disp(re,"    re(ohm) =")  // in ohm
disp("The input impedance of the amplifier is")
zb=(101*(3.03+910))*10^-3  // in k-ohm
disp(zb,"    Zb(k-ohm) = (1+beta)(re+RE) =")
disp("The input impedance of the amplifier stage is")
format(6)
Zi=((75*92.2*10^6)/((75*10^3)+(92.2*10^3)))*10^-3  // in k-ohm
disp(Zi,"    Zi(k-ohm) = RB || Zb =")
disp("The voltage gain of the amplifier is")
av=910/(3.03+910)
disp(av,"Av = RE / re+RE =")