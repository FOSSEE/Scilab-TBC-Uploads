clc
clear
printf("Example 10.1 | Page number 333 \n\n");
//Find dryness fraction of mixture
//Given data
m = 1.5 //kg //mass of wet steam
mf = 0.08*m //kg //mass of liquid in wet steam
//Solution
x = (m-mf)/m //dryness fraction of mixture
printf("Dryness fraction of mixture = %.2f",x)
