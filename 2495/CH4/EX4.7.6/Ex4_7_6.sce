clear
clc
P1=36.7;//vapour pressure of pure toluene in torr
P2=118.2;//vapour pressure of pure benzene in torr
nt=50;//% amount of toluene in gm
nb=50;//% amount of benzene in gm
Nt=92;//molar mass of toluene in gm/mol
Nb=78;//molar mass of benzene in gm/mol
Xt=(nt/Nt)/((nt/Nt)+(nb/Nb));//mole fraction of toluene
Pt=Xt*P1;//partial pressure of toluene on torr
Pb=(1-Xt)*P2;//partial pressure of benzene on torr
P=Pt+Pb;//total pressure of toluene on torr
printf('P=%.2f torr',P)
Yt=Pt/P;//mole fraction of toluene in vapour phase
printf('\nYt=%.3f ',Yt)
Yb=(1-Yt);//mole fraction of benzene in vapour phase
printf('\nYb=%.3f ',Yb)
P0=50;//in torr
Xt1=(P0-P2)/(P1-P2);//mole fraction of toluene at P=50 torr
printf('\nXt1=%.4f ',Xt1)
Xb1=(1-Xt1);//mole fraction of benzene at P=50 torr
printf('\nXb1=%.4f ',Xb1)

//page 146

