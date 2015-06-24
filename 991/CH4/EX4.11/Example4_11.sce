//Example 4.11.
clc
q=1.6*10^-19
ni=2.5*10^13
up=1800
un=3800
VT=0.026
rho=6
format(9)
NA=1/(6*q*up)
disp("(a) Resistivity,  rho = 1 / sigma = 1 / NA*q*up = 6 ohm-cm")
disp(NA,"Therefore,  NA(1/cm^3) = 1 / 6*q*up =")
ND=1/(4*q*un)
disp(ND,"Similarly,  ND(1/cm^3) = 1 / 4*q*un =")
format(7)
Va=VT*log((ND*NA)/ni^2)
disp(Va,"Therefore, Va(V) = VT*ln(ND*NA / ni^2) =")
disp(Va,"Hence,  Eo(eV) = ")
Va1=0.026*log((2*ND*2*NA)/ni^2)
disp(Va1,"(b) Vo(V) = 0.026*ln(2*ND*2*NA / ni^2) =")
disp(Va1,"Therefore,  Eo(eV) = ")