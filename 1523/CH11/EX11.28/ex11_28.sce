//Two-Port Networks : example 11.28 :(pg11.58 & 11.59)
printf("\nApplying KCL to Node 1 \nI1 = 1.5V1 - 0.5V2- - -(i)");
printf("\nApplying KCL to Node 2 \nI2 = 4V1 - 0.5V2 - - - -(ii)");
//observing (i) & (ii)
printf("\nY-parameters:");
a=1.5;b=(-0.5);c=(4);d=(-0.5);
disp([a b;c d]);
dY=((a*d)-(b*c));
Z11=(d/dY);
Z12=(-b/dY);
Z21=(-c/dY);
Z22=(a/dY);
printf("\ndY=Y11.Y22-Y12.Y21 =%.f",dY);
printf("\nZ11 = Y22/dY = %.f Ohm",Z11);
printf("\nZ12 = -Y12/dY = %.f Ohm",Z12);
printf("\nZ21 = -Y21/-dY = %.f Ohm",Z21);
printf("\nZ22 = Y11/dY = %.1f Ohm",Z22);
printf("\nZ-parameters :");
disp([Z11 Z12;Z21 Z22]);