
delf=0.6
fo=1
Zo=100
Qz=acos(1/sqrt(2)*cos((2-delf/fo)/4*%pi))
Qm=acos(sqrt(2)*cos(Qz))
Z_L=5
k=sqrt((Z_L-1)^2/4/Z_L*cotg(Qz)^4)
Pm=sqrt(k^2/(1+k^2))
Z1=sqrt(((Z_L-1)^2/4/tan(Qz)^4+Z_L)^(1/2)+(Z_L-1)/2/tan(Qz)^2)
Z2=Z_L/Z1*Zo
Z_in=Z1^2/Z2^2*Z_L*10^4
F=(Z_in-1)/(Z_in+1)
printf("\nQz=%.4f rad\nQm=%.1f\nk=%.4f\nPm=%.4f\nZ_1=%.2f ohm\nZ2=%.2f ohm\nZ-in=%.4f\nF=%.4f",Qz,Qm,k,Pm,Z1,Z2,Z_in,F)