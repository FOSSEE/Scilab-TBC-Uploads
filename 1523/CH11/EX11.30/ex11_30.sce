//Two-Port Networks : example 11.30 :(pg11.60 & 11.561)
printf("\nApplying KVL to Mesh 1 \nV1 = 4I1 + (0.05)I2 - - - -(i)");
printf("\nApplying KVL to Mesh 2 \nV2 = 2I1 - 10I2 - - - -(ii)");
//substituting (i) in (ii),
printf("\nV2 = -40I1 + (1.5)I2");
printf("\nZ-parameters:");
a=4;b=0.05;c=-40;d=1.5;
disp([a b;c d]);
dZ=(a*d)-(b*c);
Y11=(d/dZ);
Y12=(b/dZ);
Y21=(-c/dZ);
Y22=(a/dZ);
printf("\nY-parameters are:");
printf("\ndZ = Z11.Z22 - Z12.Z21 = %.1f",dZ);
printf("\nY11 = Z22/dZ = %.1f mho",Y11);
printf("\nY12 = -Z12/dY = %.f mho",Y12);
printf("\nY21 = -Z21/-dY = %.1f mho",Y21);
printf("\nY22 = Z11/dY = %.1f mho",Y22);
disp([Y11 Y12;Y21 Y22]); 