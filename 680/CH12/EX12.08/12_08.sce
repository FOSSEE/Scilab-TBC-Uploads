//Problem 12.08:

//initializing the variables:
ZC2 = 0.25;
ZC4 = 0.15;
Zy = 0.6;
p = 120; // in psia
a = 4;
T = 40; // in degF

//calculation:
//Write the componential split equation:
//Exi = E{zi/[L + Ki(1-L)]} = 1.0
//Set L and V. The bottoms to boilup ratio is 4/1. Therefore,
L = 0.80
V = 1-L
//Obtain K for ethane (E) and n-butane (B) at 120 psia and 40 degF:
Ke = 2.60
Kb = 0.18
//Calculate xe and xb by employing above Equation:
//xi = zi/[L + Ki*V]
//Substituting
xe = 0.19
xb = 0.18
//Set Y as the unknown component (see Table 12.6), and then calculate Xy.
Xy = 1 - xe-xb
//Calculate KY by applying Equation (12.4) to component Y
Ky = (Zy/Xy -L)/V

printf("\n\nResult\n\n")
printf("\n the chemical name of the unknown componentcorresponding to KY (120 psia and 408F) with a value of %.2f appears to be propane",Ky)
