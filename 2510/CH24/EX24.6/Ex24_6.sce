//Variable declaration:
syms X                                  //Range of X
Px = 1.7*(exp(-1.7*X))                  //Probability distribution function

//Calculation:
P = eval(integrate(Px, X,2,6))              //Probability that X will have a value between 2 and 6

//Result:
printf("The probability that X will have a value between 2 and 6 is : %.4f",P)
