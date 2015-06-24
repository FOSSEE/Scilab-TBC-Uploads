clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
x=1//cm
t=100*10^-6//sec
epsilon=50//V/cm
vp=x/t
disp(vp,"drift velocity in cm/s is")
up=vp/epsilon
disp(up,"mobility in cm^2/Vs is")
Dp=(k*T*up)
disp(Dp,"diffusivity of minority carriers in cm^2/sec is")
