clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
un=1300//m^2/Vs
Nd=10^16//cm^3
n=Nd
disp(n,"donors are ionized in cm^3 is")
row=1/(q*n*un)
disp(row,"resistivity in ohm cm is")
