//5.4
clc;
l2=(10/3)*(1.5/1.5)*(9/15)^2;
printf("Length of wire=%.2f m",l2)
a1=0.0004;
a2=0.0003;
R2=1;
R1=1.5*R2;
T=100;
Rp=R1*(1+a1*T);
Rq=R2*(1+a2*T);
R=Rp/Rq;
printf("Ratio of resistances=%.2f",R)