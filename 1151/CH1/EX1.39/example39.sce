//derive transfer function using  block diagram reduction
printf("syms G1 H1 G2 H2\nL1=G1*G2/(1+G2*H2+G1*G2*H1) //WHEN R3=0,R2=0,R4=0\nL2=G2/(1+G2*H2+G1*G2*H1) //WHEN R3=0,R1=0,R4=0\nL3=-G2/(1+G2*H2+G1*G2*H1) //WHEN R2=0,R1=0,R4=0\nL4=-G2*G1*H1/(1+G2*H2+G1*G2*H1) //WHEN R2=0,R1=0,R3=0\nl=L1+L2+L3+L4;\nC(s)/R(s)=l")
