clear;
//clc();
vl=400;
il=36;
pf=0.8;

p1=sqrt(3)*vl*il*pf;
op=15*746;
eff=0.85;
p2=op/eff;

//as per ques 26.7
p1=19.953;
p2=12.979;
q1=acosd(0.8);
q2=acosd(0.92);
qm=((p1*tand(q1)) - (p1+p2)*tand(q2))/p2;
pf=cosd(atand(qm));
printf("The power factor is:%.4f leading\n",pf);


lkvar=p2*(qm);
printf("The kVAr is:%.3f kVAr\n",lkvar);


kva=sqrt(p2*p2 + lkvar*lkvar);
printf("The kVA is:%.0f kVA\n",kva);
