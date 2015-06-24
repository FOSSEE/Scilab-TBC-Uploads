//derive transfer function using  block diagram reduction
printf("syms G1 H1 G2 H2 G3\n l1=G3/(1+G3*H1);//feedback blocks\n l2=G2*l1;//cascading of blocks\n l3=H2/G3;\n l4=l2/(1+l2*l3);//-ve feedback\n l5=l4*G1;//cascading blocks\n l6=l5/(1+l5);C(s)/R(s)=l6")
