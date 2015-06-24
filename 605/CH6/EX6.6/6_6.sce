
Rp=600
Rs=50
W=2*%pi*400*10^6
Q=sqrt(Rp/Rs-1)
Xs=Q*Rs
Xp=Rp/Q
Cs=1/W/Xs
Lp=Xp/W
Ls=Xs/W
Cp=1/W/Xp
printf("\nQ=%.4f\nXs=%.4f ohm\nXp=%.4f ohm\nCs=%.2e F\nLp=%.3e H\nLs=%.3e H\nCp=%.2e F",Q,Xs,Xp,Cs,Lp,Ls,Cp)