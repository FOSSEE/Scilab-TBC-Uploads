//derive transfer function using  block diagram reduction
printf("syms G1 H1 G2 H2 G3 G4\nl1=(G1-G1*G2*G4)/(1-G1*G2*G3*G4);//X1/R\nl2=G2*(1-G1*G3)/(1-G1*G2*G3*G4);//X2/R\n g=l1+l2;//X1/R+X2/R\n C(s)/R(s)=g");
