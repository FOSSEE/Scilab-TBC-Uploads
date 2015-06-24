clc;
clear;

printf("Example 10.10\n");

//The mass transfer rate (moles/unit area and unit time) is given by equation 
//10.180, where denoting the original conditions by subscript 1 and the 
//conditions at the higher temperature by subscript 2 gives
//N_A2=0.83*N_A1
//Substituting the numerical values gives:
n=2*(log(0.83/(1.35)^0.5)/log(0.8))-1;
printf("\n n = %.2f ",n);
printf("\n Thus the reaction is of second order");
