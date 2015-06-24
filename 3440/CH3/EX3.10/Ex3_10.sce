clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
N1=1*10^16//cm^-3
N2=3*10^19//cm^-3
Vbi=1.6//V
epsilon1=12
epsilon2=13
epsilonx=8.854*10^-14 //F/cm
Vb1=(epsilon2*N2*Vbi)/(epsilon1*N1+epsilon2*N2)
disp(Vb1,"Vb1 in V=")
Vb2=(epsilon1*N1*Vbi)/(epsilon1*N1+epsilon2*N2)
disp(Vb2,"Vb2 in V=")
x1=sqrt((2*epsilon1*epsilon2*N2*Vbi)/(q*N1*(epsilon1*N1+epsilon2*N2)))              //textbook ans is wrong
disp(x1,"x1 in cm=")
x2=sqrt([2*epsilon1*epsilon2*N1*Vbi]/[q*N2*(epsilon1*N1+epsilon2*N2)])
disp(x2,"x2 in cm=")    //texbook ans is wrong
