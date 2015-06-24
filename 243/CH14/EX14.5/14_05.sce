//Example No. 14_05
//Eigen Vectors
//Pg No. 476

clear ; close ; clc ; 

A = [ -1 0 0 ; 1 -2 3 ; 0 2 -3]
[evectors,evalues] = spec(A)
for i = 1:3
    mprintf('\n Eigen vector - %i \n for lamda%i = %f \n X%i = ',i,i,evalues(i,i),i)
    evectors(:,i) = evectors(:,i)/evectors(2,i)
    disp(evectors(:,i))
end