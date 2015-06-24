clc
//Given that
b_ratio = 2 // ratio of light output in a period 
// sample problem 2a page No. 333
printf("\n # Problem 2a # \n")

printf("Standard formula used \n\t M = m - 2.5log(L/L_0) ")
del_m = 2.5 * log10(b_ratio) // calulation of change in magnitude
printf ("\n Change in magnitude is %f times", del_m )
