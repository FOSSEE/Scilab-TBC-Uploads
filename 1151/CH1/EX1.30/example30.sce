//derive transfer function using  block diagram reduction

printf("syms G1 H1 G2 H2 H3 \n l1=G1/(1+G1*H1);//feedback configuration\n l2=G2/(1+G2*H2);//feedback configuration\n l3=l1*l2;//cascading combination\n g=l3/(1+l3*H3");
printf("\nC(s)/R(s)=g")
