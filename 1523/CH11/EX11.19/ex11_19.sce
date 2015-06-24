//Two-Port Networks : example 11.19 :(pg11.49 & 11.50)
Z11=20;
Z22=30;
Z12=10;
Z21=10;
dZ=((Z11*Z22)-(Z12*Z21));
Y11=(Z22/dZ);
Y12=(-Z12/dZ);
Y21=(-Z21/dZ);
Y22=(Z11/dZ);
A=(Z11/Z21);
B=(dZ/Z21);
C=(1/Z21);
D=(Z22/Z21);
printf("\nY-parameters");
printf("\nY11 = Z22/dZ = %.2f mho",Y11);
printf("\nY12 = -Z12/dZ = %.2f mho",Y12);
printf("\nY21 = -Z21/dZ = %.2f mho",Y21);
printf("\nY22 = Z11/dZ = %.2f mho",Y22);
printf("\n Y-parameters are:");
disp([Y11 Y12;Y21 Y22]);//Y-parameters in matrix form
printf("\nABCD parameters");
printf("\nA = Z11/Z21 = %.f",A);
printf("\nB = dZ/Z21 = %.f",B);
printf("\nC = 1/Z21 = %.1f",C);
printf("\nD = Z22/Z21 = %.f",D);
printf("\n ABCD parameters are:");
disp([A B;C D]);//ABCD parameters in matrix form




































