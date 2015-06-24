//Two-Port Networks : example 11.24 :(pg11.54 & 11.55)
printf("\nApplying KCL to Node 3 \nV3 = V2/3 - - - -(i)");
printf("\nI1 = 2V1 - (2/3)V2 - - - -(ii)");
printf("\nI2 = 3V2 - (V2/3) = (8/3)V2 - - - -(iii)");
//Comparing (iii) & (ii) ,we get
printf("\nY-parameters:");
a=2;b=(-2/3);c=0;d=(8/3);
disp([a b;b d]);
dY=((a*d)-(b*c));
Z11=(d/dY);
Z12=(-b/dY);
Z21=(c/dY);
Z22=(a/dY);
printf("\ndY=Y11.Y22-Y12.Y21 =%.1f",dY);
printf("\nZ11 = Y22/dY = %.1f Ohm",Z11);
printf("\nZ12 = -Y12/dY = %.1f Ohm",Z12);
printf("\nZ21 = -Y21/-dY = %.f Ohm",Z21);
printf("\nZ22 = Y11/dY = %.1f Ohm",Z22);
printf("\nZ-parameters :");
disp([Z11 Z12;Z21 Z22]);