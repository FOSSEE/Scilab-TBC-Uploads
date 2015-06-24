//Problem 14.15:

//initializing the variables:
K1 = 152;
K2 = 665;
P = 1; // in atm
nA0 = 1;
a = 1;
nB0 = 3;
b = 4;
nC0 = 0;
c = 2;
g = 1;
nD0 = 0;
d =2;
nE0 = 1;
e = 2;
nF0 = 0;
f = 1;

//calculation:
//For 1 atm and ideal conditions
//K1 = YC^c*YD^d/(YA^a*YB^b) = 152
//K2 = YF^f/(yC^c*YE^e) = 665
//For this case,
n0 = nA0 +nB0 + nC0 + nD0 + nE0 + nF0
//n = n0 + (c+d-b-a)*e1 + (f-e-g)*e2
//n = 5 - e1 - 2e2
//with
//YA = (1-e1)/n
//YB = (3-4e1)/n
//YC = (2e1-e2)/n
//YD = 2e1/n
//YE = (1-2e2)/n
//YF = e2/n
//The reader is left the exercise of solving for the two unknown e1 and e2. Note also that there are \n two equations: one for K1 and one for K2.
//The following three constraints apply:
//e1 < 0.512
//e1 < 0.75
//e2 < 0.5
//Answers:
e1 = 0.622
e2 = 0.402

printf("\n\nResult\n\n")
printf("\n e1 = %.3f and e2 = %.3f",e1,e2)
