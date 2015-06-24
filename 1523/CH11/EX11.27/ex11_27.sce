//Two-Port Networks : example 11.27 :(pg11.58)
printf("\nApplying KCL to Node 1 \nI1 = 4V1 - 3V2- - -(i)");
printf("\nApplying KCL to Node 2 \nI2 = -3V1 + 1.5V2 - - - -(ii)");
//observing (i) & (ii)
printf("\nY-parameters:");
a=4;b=(-3);c=(-3);d=1.5;
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