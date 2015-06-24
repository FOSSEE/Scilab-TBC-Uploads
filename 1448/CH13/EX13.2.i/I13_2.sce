clc
//Initialization of variables
dv=1 //pm^3
a0=52.9 //pm
//calculations
Probability=dv/(%pi*a0^3)
//results
printf("probability of finding electron = %.1e",Probability)
printf("\n Chance that electron would be found is one in %d times",1/Probability)
