clc
clear
disp('example 13 8');
p1=30;x1=0.3 //power and reactance of different sets
p2=30;x2=0.3
p3=20;x3=0.3
l=10 ;xl=0.04
pb=p1;xp3=x3*pb/p3
tr=(xp3*x1*x2)/(xp3*x1+xp3*x2+x1*x2)
sc=pb/tr
disp('a')
printf("total reactance %.4f p.u \n short circuit MVA on l.v.bus %.2fMVA",tr,sc)
disp('b')
xlp=xl*pb/l
trr=tr+xlp
scc=pb/trr
printf("total reactance seen from h.v.side of transformer %.2fp.u \n short circuit MVA %.2fMVA",trr,scc)
