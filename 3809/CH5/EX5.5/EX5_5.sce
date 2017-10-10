//Chapter 5, Example 5.5

clc
//Initialisation'
L1=10                   //inductance
L2=20                   //inductance


//Calculation
Ls=L1+L2                                //inductance in series
Lp=(L1*L2)/(L1+L2)                   //inductance in parallel

//Results
printf("(a) Inductance in Series Ls = %d H\n",Ls)
printf("(b) Inductance in Parallel Lp = %.2f H\n",Lp)
