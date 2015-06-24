//Example No. 4_05
//Truncation Error
//Pg No. 68
clear ; close ; clc ;

x = 1/5
//When first three terms are used
Trunc_err = x^3/factorial(3) + x^4/factorial(4) + x^5/factorial(5) + x^6/factorial(6)
mprintf('\n a) When first three terms are used \n Truncation error = %.6E \n ',Trunc_err)

//When four terms are used
Trunc_err = x^4/factorial(4) + x^5/factorial(5) + x^6/factorial(6)
mprintf('\n b) When first four terms are used \n Truncation error = %.6E \n ',Trunc_err)

//When Five terms are used
Trunc_err = x^5/factorial(5) + x^6/factorial(6)
mprintf('\n c) When first five terms are used \n Truncation error = %.6E \n ',Trunc_err)