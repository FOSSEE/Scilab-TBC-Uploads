//chapter 4
//broadside array
printf("\n");
n=4;
lamda=0.1
d=0.5
i=0.25
Rrad=73;
//part a
Prad=n*(i^2*Rrad);
printf("the radiated power is %gW",Prad);
//part b
L=n*d;
printf("\nthe length is %dm",L);
BWFN=2*lamda/L;
HPBW=BWFN/2;
printf("\nthe Beam width first null is %g radians",BWFN);
printf("\nthe half power beam width is %g radians",HPBW);
