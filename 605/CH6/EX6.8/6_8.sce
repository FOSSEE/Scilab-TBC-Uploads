
f=500*10^6
W=2*%pi*f
Rp=50
Rs=10
Q=sqrt(Rp/Rs-1)
Xs=Q*Rs
Xp=Rp/Q
Ls=(Xs-10)/W
Cp=1/W/Xp
Cs=1/W/(Xs+10)
Lp=Xp/W
printf("\nQ=%.0f\nXs=%.0f ohm\nXp=%.0f ohm\nLs=%.4e H\nCp=%e F\nCs=%e F\nLp=%e H",Q,Xs,Xp,Ls,Cp,Cs,Lp)