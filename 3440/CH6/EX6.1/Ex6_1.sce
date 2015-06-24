clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
NA=10^17 //cm^-3
d=8*10^-7//cm
Co=6.9*10^-7//F/cm^2
VFB=-1.1//V
//2*phis=p
p=0.84//V
dsi=5*10^-6//cm^2
VT=VFB+p+(q*NA*dsi/Co)
disp(VT,"VT in V is=")
