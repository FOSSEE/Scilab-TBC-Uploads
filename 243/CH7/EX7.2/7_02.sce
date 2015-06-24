//Example No. 7_02
//Basic Gauss Elimination
//Pg No. 214
clear ; close ; clc ;

A = [  3  6  1  ;  2  4  3  ;  1  3  2 ];
B = [16 13 9];
[ar1,ac1] = size(A);
Aug = [3 6 1 16 ; 2 4 3 13 ; 1 3 2 9]
for i = 2 : ar1
    Aug(i,:) = Aug(i,:) - (Aug(i,1)/Aug(1,1))*Aug(1,:) ;
end
disp(Aug)
disp('since Aug(2,2) = 0 elimination is not possible,so reordering the matrix')
Aug = Aug( [ 1 3 2],:);
disp(Aug)
disp('Elimination is complete and by back substitution the solution is\n')
disp('x3 = 1, x2 = 2 , x1 = 1 ')