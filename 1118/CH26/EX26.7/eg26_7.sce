clear;
//clc();
p1=500;
p2=100;
q1=acosd(.707);
q2=acosd(0.95);
lkvar=(p1*tand(q1) - (p1+p2)*tand(q2));
printf("The kVAr is:%.2f kVAr\n",lkvar);

kva=sqrt(p2*p2 + lkvar*lkvar);
printf("The kVA is:%.2f kVA\n",kva);

pf=(p2/kva);
printf("The power factor is:%.3f leading\n",pf);
