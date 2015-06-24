//to determine the equivalent t-network  

//clc();
rab=720;
rac_oc=1240;
rcd=910;
r3=sqrt((rac_oc-rab)*(rcd));
printf("\n the R3 resistance is:  %f ohm\n",r3);

r2=rcd-r3;
printf("\n the R2 resistance is:  %f ohm\n",r2);

r1=rac_oc-r3;
printf("\n the R1 resistance is:  %f ohm\n",r1);
