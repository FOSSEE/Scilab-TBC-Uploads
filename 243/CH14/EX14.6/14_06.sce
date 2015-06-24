//Example No. 14_06
//Power method
//Pg No. 478
clear ; close ; clc ;

A = [ 1 2 0 ; 2 1 0 ; 0 0 -1 ]
X(:,1) = [0 ; 1 ; 0]
for i = 1:7
    Y(:,i) = A*X(:,i)
    X(:,i+1) = Y(:,i)/max(Y(:,i))
end
disp('  0      1       2      3           4            5            6             7 ','Iterations')
disp(X,'X = ',[[%nan ;%nan ;%nan] Y ],'Y = ')
