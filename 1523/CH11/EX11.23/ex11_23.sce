//Two-Port Networks : example 11.23 :(pg11.53 & 11.54)
printf("\nApplying KVL to Mesh 1 \nV1 = 4I1 - 2I3 - - - -(i)");
printf("\nApplying KVL to Mesh 2 \nV2 = 4I2 + 2I3 - - - -(ii)");
printf("\nApplying KVL to Mesh 3 \n-2I3 = I1 + I2 - - - -(iii)");
//substituting (iii) in (i) & (ii),we get
printf("\nV1 = 5I1 + I2 \nV2 = -I1 + 3I2");
printf("\nZ-parameters:");
a=5;b=1;c=-1;d=3;
disp([a b;c d]);
dZ=(a*d)-(b*c);
h11=(dZ/d);
h12=(b/d);
h21=(-c/d);
h22=(1/d);
printf("\ndZ = Z11.Z22 - Z12.Z21 = %.1f",dZ);
printf("\nh11 = dZ/Z22 = %.1f ",h11);
printf("\nh12 = Z12/Z22 = %.1f ",h12);
printf("\nh21 = -Z21/Z22 = %.1f ",h21);
printf("\nh22 = 1/Z22 = %.1f ",h22);
printf("\nh-parameters are:");
disp([h11 h12;h21 h22]); 