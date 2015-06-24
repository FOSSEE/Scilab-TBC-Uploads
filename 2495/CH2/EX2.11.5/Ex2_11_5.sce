clear
clc
DelTf1=0.704;//freezing point of aqueous KCN in K
Kf=1.86;//in kg/mol
M1=(DelTf1)/Kf;//molality of the solution containing KCN
DelTf2=0.530;//freezing point on addition of Hg(CN)2
M2=(DelTf2)/Kf;//molality on addition og Hg(CN)2
Kplus=0.1892;//amount of K+ in 1000gm of solvent
HgCN2=0.095;//amount of Hg(CN)2 added to form complex
M=(Kplus+Kplus+HgCN2-M2);//
N=(M/HgCN2);//no. of CN- units combined
printf('N=%.1f',N)

//Formula is Hg(CN)2^-4
//page 77
