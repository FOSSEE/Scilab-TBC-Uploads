clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=10^17//cm^-3
Wm=1*10^-5
d=5*10^-7//cm
epsilonx=8.854*10^-14 //F/cm
epsilonox=3.9 
ni=9.65*10^9//cm^-3
Co=epsilonox*epsilonx/d
disp(Co,"Co in F/cm^2 =")
Qsc=q*NA*Wm
disp(Qsc,"Qsc")    //textbook ans is wrong
psis=2*k*T*log(NA/ni)
disp(psis,"psis in V =")
Cmin=epsilonox*epsilonx/(d+(epsilonox/11.9)*Wm)
disp(Cmin,"Cmin in F/cm^2 =")
