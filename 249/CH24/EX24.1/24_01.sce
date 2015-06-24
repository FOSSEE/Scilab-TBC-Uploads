clear
clc
kag_a=0.32;//mol/hr.m3.Pa
kal_a=0.1;//hr
HA=12.5;//Pa.m3/mol
Fg=10^5;//mol/hr.m2
Fl=7*10^5;//mol/hr.m2
Ct=56000;//mol/m3
P=10^5;//Pa
//pA3-pA1=(Fl*P)*(CA3-CA1)/(Fg*CT)
//CA3=0.08*PA3-1.6
inv_Kag_a=inv(kag_a)+HA/(kal_a);
Gfilm_res=(inv(kag_a))/inv_Kag_a;
Lfilm_res=(HA/(kal_a))/inv_Kag_a;
Kag_a=1/inv_Kag_a;
//d=PA-PA*
//p=PA-HA*(0.08*PA-1.6);
d=20;
h=(Fg/(P*Kag_a))*integrate('1/20','dp',20,100);
printf("\n The height of the tower required for countercurrent operartions is % f",h)
printf("m")

