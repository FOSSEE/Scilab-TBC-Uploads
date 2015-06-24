//Example No. 15_04
//Gauss-Seidel Iteration
//Pg No. 491
clear ; close ; clc ;
 
f2 = 0
f3 = 0
for i = 1:4
    f1 = (f2 + f3 - 8)/4
    f4 = f1 
    f2 = (f1 + f4 -32)/4
    f3 = (f1 + f4 - 2)/4
    mprintf('\nIteration %i\n f1 = %f,    f2 = %f,    f3 = %f,    f4 = %f\n',i,f1,f2,f3,f4)
end