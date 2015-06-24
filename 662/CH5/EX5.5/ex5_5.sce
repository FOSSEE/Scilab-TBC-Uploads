                //Example 5.5
//Debugging a program for real roots of quadratic equation

//read input data
printf("a = ");
a=scanf("%f");
printf("b = ");
b=scanf("%f");
printf("c = ");
c=scanf("%f");

//carry out the calculations
d=sqrt(b*b - 4*a*c);
printf("a= %e   b=%e  c=%e  d=%e \n", a, b, c, d);       // tracing statement 
printf("-b+d = %e\n", (-b+d));                          // tracing statement 
printf("-b-d = %e\n", (-b-d));                          // tracing statement 
x1=(-b+d)/(2*a);
x2=(-b-d)/(2*a);

//display the content
printf("\nx1=%e  x2= %e", x1, x2);
