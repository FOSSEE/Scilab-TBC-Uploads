//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.2(PAGENO 488)");
//given
Px_i = 1/4//probability of a symbol

//calculation
Ix_i = (log(1/Px_i))/log(2)//formula for amount of information of a symbol

//result
printf("\n\ni. Amount of information  = %.2f bits",Ix_i)
