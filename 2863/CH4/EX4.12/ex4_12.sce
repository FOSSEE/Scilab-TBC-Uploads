//chapter 4
//end fire array
printf("\n");
n=16;
d=0.25;
L=(n-1)*d;
m=1;
//part a
HPBW=57.3*sqrt((2*m)/L);
printf("the HPBW is %g degree",HPBW);
//part b
D=4*L;
Ddb=10*log10(D);
printf("\nthe directivity is %d",D);
printf("\nthe directivity in db is %gdb",Ddb);
//part c
A=4*(%pi)/D;
printf("\nthe beam solid angle is %gsr",A);
//part d
lamda=1;
Ae=D*lamda^2/(4*(%pi));
printf("\nthe effective aperture is %gm^2",Ae);
