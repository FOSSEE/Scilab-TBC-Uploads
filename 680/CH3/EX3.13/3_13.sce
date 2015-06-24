//Problem 3.13:

//initializing the variables:
Y1 = 0.4; 
Y2 = 0.1;
Y3 = 0.3;
Y4 = 0.07;
Y5 = 0.07;
Y6 = 0.06;
T = 60; // in deg F
P = 1; // in atm
w = 0.020

//calculation:
//The reduced properties are therefore
Tr = 660/(268.8*1.8)
Pr = 350/(46.54*14.7)
//For standard conditions
Trs = 1.074
Prs = 0.021
//Employing the “B” approach:
B0 = 0.083-[0.422/(1.36^1.6)]
B1 = 0.139 - [0.172/(1.36^4.2)]
Za = 1 + (B0+w*B1)*0.511/1.36
//therefore
qs1 = 3000*520*350/(14.7*660*Za)
//The problem can also be solved using the “Z” approach. First note that Tr>1, Pr>1. The following equations from Table 3.4 that are given below are to be employed to solve this problem.
//Z0 = 1.156 - 0.351e^(-Tr) - 0.0885e^Pr
//and
//Z1 = -0.200 + 0.018*Pr*Tr + 0.2*(1-0.2*Pr/Tr + (Pr/Tr)^2 -(Pr/Tr)^3 + (Pr/Tr)^4 - (Pr/Tr)^5)
//For this approach
//Z = Z0 + w*Z1
Z0 = 1.156 - 0.351*%e^(-Tr) - 0.0885*%e^Pr
Z1 = -0.200 + 0.018*Pr*Tr + 0.2*(1-0.2*Pr/Tr + (Pr/Tr)^2 -(Pr/Tr)^3 + (Pr/Tr)^4 - (Pr/Tr)^5)
Z = Z0 + w*Z1
//therefore
qs2 = 3000*520*350/(14.7*660*Z)

printf("\n\nResult\n\n")
printf("\n the volume flow by B approach is %.0f ft^3/day and \n by the equations provided by Van Vliet and Domato is %.0f ft^3/day ",qs1,qs2)
