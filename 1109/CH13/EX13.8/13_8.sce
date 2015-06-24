clear;
clc;
V1=1;R1=1;R2=2;R3=1;R4=2;I2=0;
//I2=0 because port 2-2' has been open circuited
a=[R1+R2 -R2;-2 5];
b=[1;0];
b=inv(a)*b;
I1=b(1,1);
I3=b(2,1);
V2=I3*R4;
A=V1/V2;
C=I1/V2;
V21=0; //because port 2-2' has been short circuited
c=[3 -2;-2 3];
d=[1;0];
d=inv(c)*d;
I11=d(1,1);
I21=d(2,1);
B=V1/I21;
D=I11/I21;
R=(A*D)-(B*C);
printf("The transmission parameters are:\n");
printf("  A = %f\n",A);
printf("  B = %f ohms\n",B);
printf("  C = %f mhos\n",C);
printf("  D = %f\n\n",D);
printf(" AD-BC = %f . Hence the circuit is reciprocal.",R);
