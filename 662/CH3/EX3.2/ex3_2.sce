         //Example 3.2
//signed integer opernds
a=11
b=-3
printf("\na+b=   %d", a+b);
printf("\na-b=   %d", a-b);
printf("\na*b=   %d", a*b);
printf("\na/b=   %d", a/b);
 //modulo() here is equivalent to% operator of c, but can operate on float values also
ab = modulo(a,b);               
printf("\n a\b=   %d",ab);

printf("\nIf both a and b are negative:");
a=-11
b=-3
printf("\na/b=   %d", a/b);
ab = modulo(a,b);
printf("\n a\b=   %d",ab);

