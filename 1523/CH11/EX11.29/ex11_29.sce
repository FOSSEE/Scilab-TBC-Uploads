//Two-Port Networks : example 11.29 :(pg11.59 & 11.60)
printf("\nApplying KCL to Node 1 \nI1 = 3V1 - 2V2- - -(i)");
printf("\nApplying KCL to Node 2 \nI2 = 3V2 - V3 - - - -(ii)");
printf("\nApplying KCL to Node 3 \nV3 = (1/3)V2 - - - -(ii)");
//substituting (iii) in (i) & (ii),we get
printf("\nI1 = 3V1 - (2/3)V2 \nI2 = 0V1 + (8/3)V2");
printf("\nY-parameters:");
a=3;b=(-2/3);c=(0);d=(8/3);
disp([a b;c d]);
dY=((a*d)-(b*c));
Z11=(d/dY);
Z12=(-b/dY);
Z21=(c/dY);
Z22=(a/dY);
printf("\ndY=Y11.Y22-Y12.Y21 =%.f",dY);
printf("\nZ11 = Y22/dY = %.1f Ohm",Z11);
printf("\nZ12 = -Y12/dY = %.1f Ohm",Z12);
printf("\nZ21 = -Y21/-dY = %.f Ohm",Z21);
printf("\nZ22 = Y11/dY = %.1f Ohm",Z22);
printf("\nZ-parameters :");
disp([Z11 Z12;Z21 Z22]);