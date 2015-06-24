clear;
clc;
Z1=%i*20;Z2=%i*25;Z3=30;
Z11=Z1+Z3; //Z11=V1/I1 when I2=0
Z12=Z3; //Z12=V1/I2 when I1=0
Z21=Z3; //Z21=V2/I1 when I2=0
Z22=Z2+Z3; //Z22=V2/I2 when I1=0
printf("(a)The z-parameters are\n");
printf("  Z11 = %f + j(%f) ohms\n",real(Z11),imag(Z11));
printf("  Z12 = %f ohms\n",Z12);
printf("  Z21 = %f ohms\n",Z21);
printf("  Z22 = %f + j(%f) ohms\n",real(Z22),imag(Z22));
deltaz=(Z11*Z22)-(Z12*Z21);
y11=Z22/deltaz;
y12=-Z12/deltaz;
y21=-Z21/deltaz;
y22=Z11/deltaz;

printf("(b)The y-parameters are\n");
printf("  y11 = %f + j(%f) mhos\n",real(y11),imag(y11));
printf("  y12 = %f + j(%f) mhos\n",real(y12),imag(y12));
printf("  y21 = %f + j(%f) mhos\n",real(y21),imag(y21));
printf("  y22 = %f + j(%f) mhos\n",real(y22),imag(y22));
