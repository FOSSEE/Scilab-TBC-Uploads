clc

Nd=5*10**13 //cm^-3
Na=0
ni=2.4*10**13 //cm^-3
T=300 //K
k=8.617*10^-5 //eV/K

n0=((Nd-Na)/2)+sqrt((((Nd-Na)/2)^2)+ni^2)
disp(n0,"n0 in cm^-3 is")

p0=(ni^2)/n0
disp(p0,"p0 in cm^-3")



