//Example 14.8. Refer fig.14.8
clc
format(6)
R1=20*10^3
R2=20*10^3
hie=2*10^3
RL=1*10^3
Re=100
hfe=80
A=(-hfe*RL)/hie
disp(A,"(a)  A = -hfe*RL / hie =")
disp("     Ri = hie = 2 k-ohm")
beta=Re/RL
disp(beta,"(b)  beta = Re / RL =")
Rif=hie+((1+hfe)*Re)
x1=Rif*10^-3
disp(x1,"(c)  Rif(k-ohm) = hie + (1+hfe)*Re =")
Af=(-hfe*RL)/Rif
format(5)
disp(Af,"(d)  Af = -hfe*RL / Rif =")
lg=20*log10(4)
format(6)
disp(lg,"(e)  Loop gain, Abeta(in dB) = -40*0.1 = -4 i.e. 20log4 =")