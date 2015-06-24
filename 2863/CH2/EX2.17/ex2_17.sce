//chapter 2
//efficiency=Prad/Pinput
//efficiency=0.95,Umax=0.5W/sr,D=Umax/[Prad/4*pi];
//part (i)
printf("\n");
Pinput=0.4;
n=0.95;
Umax=0.5;
Prad=n*Pinput;
printf("the radiated power is %gW",Prad);
D=0.5/(0.38/(4*(%pi)));
printf("\nthe directivity is %g",D);
//part(ii)
Prad=0.3;
D=0.5/(0.3/(4*(%pi)));
printf("\nthe directivity is%g",D);
