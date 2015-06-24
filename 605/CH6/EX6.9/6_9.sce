
ZL=10^3/(8-%i*12)
Rp=50
W=2*%pi*10^9
Rs=real(ZL)
Q=sqrt(Rp/Rs-1)
Xs=Q*Rs
Xc=Xs+imag(ZL)
Xp=Rp/Q
C=1/W/Xc
L=Xp/W
disp(ZL,"ZL=")
printf("\nQ=%.4f\nXs=%.4f ohm\nXp=%.4f ohm\nC=%.4e F\nL=%.4e H\n",Q,Xs,Xp,C,L)
printf("\nXs=57.6923-21.0654 ohm\nXp=91.2909 ohm\nCp=1.7434 F")