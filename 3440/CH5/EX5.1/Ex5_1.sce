clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=10^17//cm^-3
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
W=2*sqrt(11.9*epsilonx*k*T*log(NA/ni)/(q*NA))
disp(W,"W in meter =")          //textbook ans is wrong

