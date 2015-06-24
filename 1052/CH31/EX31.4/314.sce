clc;
//Example 31.4
//page no 497
printf("Example 31.4 page no 497\n\n")
//integration
I=integrate('(1-0.4*x^2)/((1-x)*(1-0.4*x)-1.19*x^2)','x',0,0.468)
printf("\n I=%f ",I);
