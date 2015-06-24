//Two-Port Networks : example 11.20 :(pg11.50 & 11.51)
a=0.5;
b=-0.2;
d=1
printf("\nI1 =0.5V1-0.2V2 \nI2=-0.2V1+V2");
printf("\n Y11 =I1/V1 =%.1f mho",a);//when V2 is 0 in the 1st eqn
printf("\n Y21 =I2/V1 =%.1f mho",b);//when V2 is 0 in the 1st eqn
printf("\n Y12 =I1/V2 =%.1f mho",b);//when V1 is 0 in the 2nd eqn
printf("\n Y22 =I2/V2 =%.f mho",d);//when V1 is 0 in the 2nd eqn
printf("\nY-parameters are");
disp([a b;b d]);
dY=((a*d)-(b*b));
Z11=(d/dY);
Z12=(-b/dY);
Z21=(-b/dY);
Z22=(a/dY);
A=(-d/b);
C=(-dY/b);
D=(-a/b);
printf("\ndY=Y11.Y22-Y12.Y21 =%.2f",dY);
printf("\nZ11 = Y22/dY = %.3f Ohm",Z11);
printf("\nZ12 = -Y12/dY = %.3f Ohm",Z12);
printf("\nZ21 = -Y21/-dY = %.3f Ohm",Z21);
printf("\nZ22 = Y11/dY = %.3f Ohm",Z22);
printf("\nZ-parameters :");
disp([Z11 Z12;Z21 Z22]);
printf("\nA =-Y22/Y21 =%.f",A);
printf("\nB = -1/Y21 =%.f",A);
printf("\nC = -dY/Y21 =%.1f",C);
printf("\nD = -Y11/Y21 =%.1f",D);
printf("\nABCD parameters :");
disp([A A;C D]);










