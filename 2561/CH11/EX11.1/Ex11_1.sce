//Ex11_1
clc
tsu=20*10^(-9)
disp("tsu= "+string(tsu)+" seconds") // Input set-up time of second flip flop
tpd=30*10^(-9)
disp("tpd= "+string(tpd)+" seconds") // Input set-up time of first flip flop
Tmin=tpd+tsu
disp("Tmin=tpd+tsu= "+string(Tmin)+" seconds") // Minimum allowed time interval b/w threshold levels of two consecutive triggering clock edges activating two flip-flops
fCkmax=1/Tmin //  formulae  
disp("fCkmax=1/Tmin = "+string(fCkmax)+" Hz")// Maximum clock frequency at which flip-flop can operate reliably
