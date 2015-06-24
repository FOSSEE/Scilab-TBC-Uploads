clc
clear
printf("Example 7.4 | Page number 191 \n\n");
//Part(a) Find efficiency if the engine is reversible.
//Part(b) Find efficiency if the engine is irreversible.

//Given Data
T1 = (527+273) //K
T2 = (27+273) //K
//Part (a)
printf("Part (a)\n");
nr = 1 - (T2/T1) //reversible efficiency
printf("Reversible efficiency = %.3f \n\n",nr);

//Part(b)
printf("Part (b)\n");
printf("As the values of at least any two from among Q1,Q2 and W are not given \nthe efficiency of the engine cannot be evaluated.However, according to \nCarnots statement, the efficiency will be less than %.3f",nr)
