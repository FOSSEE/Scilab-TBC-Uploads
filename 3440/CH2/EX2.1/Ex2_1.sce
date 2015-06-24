clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
un=1000*10^-4//m^2/Vs
vth=2.28*10**7//cm/sec
mn=0.26*m0
disp(mn)
tauc=(mn*un)/q
disp(tauc,"mean free time in sec is")
l=vth*tauc
disp(l,"mean free path in cm is")
