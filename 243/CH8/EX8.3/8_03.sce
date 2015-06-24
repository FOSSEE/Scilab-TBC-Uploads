//Example No. 8_03
//Gauss Seidel
//page no. 269
clear ; close ; clc ;

A = [ 3 1 ; 1 -3]
B = [ 5 ; 5 ]

disp('Using a matrix to display the results after each iteration, first row represents initial assumption')
X(1,1) = 0 , X(1,2) = 0 ;//initial assumption

maxit = 1000;//Maximum number of iterations
err = 0.0003 ;

disp('x1 = (5-x2)/3');
disp('x2 = (x1 - 5)/3');

for i = 2:maxit
    
    X(i,1) = (5 - X(i-1,2))/3 ;
    X(i,2) = (X(i,1) - 5)/3 ;
    
    //Error Calculations
    err1 =abs((X(i,1) - X(i-1,1))/X(i,1)) 
    err2 =abs((X(i,2)- X(i-1,2))/X(i,2))
    
    //Terminating Condition 
    if err >= err1 & err >= err2  then
        printf('The system converges to the solution ( %f , %f ) in %d iterations\n',X(i,1),X(i,2),i-1 ) 
        break
    end
       
end
//calcution of true error i.e. difference between final result and results from each iteration
trueerr1 = abs(X(:,1) - X(i,1)*ones(i,1)) ;
trueerr2 = abs(X(:,2) - X(i,2)*ones(i,1)) ;

//displaying final results
D = [  X  trueerr1   trueerr2] ;
disp(D)