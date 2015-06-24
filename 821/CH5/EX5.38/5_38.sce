PPSO3=1;//partial pressure of SO3 in atm//
PPSO2=0.2;//partial pressure of SO2 in atm//
PPO2=0.05;//partial pressure of O2 in atm//
Kp=3.5;
R=0.0821;//universal gas constant//
T=1000;//temperture in kelvin//
n1=3;
n2=2;
dn=n2-n1;//change in no. of moles//
Kc=Kp/((R*T)^dn);
printf('Kc for the reaction=Kc=%flitre per mol',Kc);
P=2;//pressure in atm//
Kinfinite=Kp/(P^dn);
printf('\nKinfinite of the reaction=Kinfinite=%fper atm',Kinfinite);
Qp=(PPSO3^2)/(PPSO2^2*PPO2);//reation quotient involving pressures//
printf('\nReaction quotient invloving pressures=Qp=%f',Qp);
dGO=-2.303*1.99*10^-3*T*log10(Kp);
printf('\ndGO=%f',dGO);
dG=dGO+(2.303*1.99*10^-3*T*log10(Qp));
printf('\nstandard free energy change in the reaction at 1000k=dG=%fKcal',dG);
printf('\nIt must be noted that under these conditions dG is positive.\nso it is the dissociation of SO3 that is spontaneous.');//here the answer given in the textbook is wrong the right one is that we got here through execution//
