//Problem 43.07: Two coils are connected in series and their effective inductance is found to be 15 mH. When the connection to one coil is reversed, the effective inductance is found to be 10 mH. If the coefficient of coupling is 0.7, determine (a) the self inductance of each coil, and (b) the mutual inductance.

//initializing the variables:
k = 0.7; // coefficient of coupling
L1 = 15E-3; // in Henry
L2 = 10E-3; // in Henry

//calculation:
//L1 = La + Lb + 2*k*(La*Lb)^0.5
//L2 = La + Lb - 2*k*(La*Lb)^0.5
//self inductance of coils
a = ((L1 - (L1  + L2)/2)/(2*k))^2
La1 =((L1  + L2)/2 + (((L1  + L2)/2)^2 - 4*a)^0.5)/2
La2 =((L1  + L2)/2 - (((L1  + L2)/2)^2 - 4*a)^0.5)/2
Lb1 = (L1 + L2)/2 - La1
Lb2 = (L1 + L2)/2 - La2
//mutual inductance, M
M = (L1 - L2)/4

printf("\n\n Result \n\n")
printf("\nself inductance of coils are %.2E H and %.2E H",La1, Lb1)
printf("\n mutual inductance, M is %.2E H",M)
