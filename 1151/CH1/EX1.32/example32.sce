//derive transfer function using  block diagram reduction
printf("syms G1 H1 G2 H2 \nG3l1=G2*G3;//cascading of blocks\nl2=l1/(1+l1*H2);//feedback configuration\nl3=l2*G1;//cascading of blocksl4=H1/G3;l5=l3/(1+l3*l2)\n C(s)/R(s)=l5")
