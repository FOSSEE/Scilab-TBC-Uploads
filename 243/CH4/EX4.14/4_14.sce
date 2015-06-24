//Example No. 4_14
//Absolute & Relative Errors
//Pg No. 79
clear ; close ; clc ;

xa = 4.000
deff('f = f(x)','f = sqrt(x) + x')
//Assuming x is correct to 4 significant digits
ex = 0.5 * 10^(-4 + 1)
df_xa = derivative(f,4)
ef = ex * df_xa
er_f = ef/f(xa)
mprintf('\n ex = %.0E \n df(xa) = %.2f \n ef = %.2E \n er,f = %.2E \n', ex,df_xa,ef,er_f)