                //Example 5.3
//Real roots of a Quadratic Equation

//read input data
printf("a = ");
a=scanf("%f");
printf("b = ");
b=scanf("%f");
printf("c = ");
c=scanf("%f");

//carry out the calculations
d=sqrt(b*b - 4*a*c);
x1=(-b+d)/(2*a);
x2=(-b-d)/(2*a);

//In scilab, no error message is generated even if value entered is negative,
//or the variables have very large or very small numerical values.

//display the content
printf("\nx1=%e  x2= %e", x1, x2);
