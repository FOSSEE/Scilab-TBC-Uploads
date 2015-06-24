//Two-Port Networks : example 11.31 :(pg11.61 & 11.62)
printf("\nApplying KVL to Mesh 1 \nV1 = 3I1 + 5I2 - - - -(i)");
printf("\nApplying KVL to Mesh 2 \nV2 = 2I1 + 4I2 - 2I3 - - - -(ii)");
printf("\nApplying KVL to Mesh 3 \nI3 = 2V3 - - - -(iii)");
//substituting (iii) in (i) & (ii),we get
printf("\n2V3 = 4I1 + 4I2 \nV2 = -6I1 + 4I2");
printf("\nZ-parameters:");
a=3;b=5;c=-6;d=-4;
disp([a b;c d]);
dZ=(a*d)-(b*c);
Y11=(d/dZ);
Y12=(-b/dZ);
Y21=(-c/dZ);
Y22=(a/dZ);
printf("\nY-parameters are:");
printf("\ndZ = Z11.Z22 - Z12.Z21 = %.1f",dZ);
printf("\nY11 = Z22/dZ = %.1f mho",Y11);
printf("\nY12 = -Z12/dY = %.1f mho",Y12);
printf("\nY21 = -Z21/-dY = %.1f mho",Y21);
printf("\nY22 = Z11/dY = %.1f mho",Y22);
disp([Y11 Y12;Y21 Y22]); 