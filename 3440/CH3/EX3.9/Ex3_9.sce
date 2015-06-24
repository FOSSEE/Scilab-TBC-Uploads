clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
ND=8*10^14//cm^-3
Vb=500 //V
W=20*10^-6//m
epsilonx=8.854*10^-14 //F/cm
Wm=sqrt((2*epsilonx*12.4*Vb)/(q*ND))
Wm1=Wm*10^-2          //to convert into micrometer
disp(Wm1,"W in meter=")
Vb1=Vb*(W/Wm1)*(2-W/Wm1)
disp(Vb1,"Vb1 in V=")
