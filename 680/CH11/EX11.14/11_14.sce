//Problem 11.14:

//initializing the variables:

//calculation:
//The equilibrium relationship given in the problem statement can be linearized by taking the log (logarithm) of both sides of the equation. This yields the following equation:
//log(q) = log(K) + n*log(c)
//A plot of log(q) vs log(c) yields a straight line if this relationship can be used to represent the experimental data. The slope of this line is equal to n, while the intercept is log(K). The experimental data analyzed using the equation above are plotted in Fig. 11.12, showing that the data fit this linearized isotherm quite well.
//The equation generated from a regression analysis indicates that
n = 1.48
//A = log(K)
A = -0.456
K = 10^A
//provided the units of c and q are mg/L and mg/g, respectively. The describing equation is therefore 
//q = 0.35c^1.48

printf("\n\nResult\n\n")
printf("\n describing equation is q = %.2f*c^%.2f",K,n)
