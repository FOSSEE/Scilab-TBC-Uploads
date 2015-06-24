//chapter 2
//example 2.4 page 79
//figure 2.40
Vios=12*10^-3; Rf=100*10^3;R1=10*10^3; Ib=500*10^-9;Iios=90*10^-9;//given
R3=Rf/R1;R4=R3+1;
Voos=Vios*R4+Rf*Ib;
disp(Voos)
Rcomp=R1*Rf/(R1+Rf);//Rcomp=R1||Rf
disp(Rcomp)
Voos2=Vios*R4+Rf*Iios;//with Rcomp,the output offset voltage become
disp(Voos2)
