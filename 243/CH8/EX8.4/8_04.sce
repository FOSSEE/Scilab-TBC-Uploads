//Example No. 8_04
//Gauss Seidel
//Page No.261
clear ; close ; clc ;

A = [ 1 -3 ; 3 1 ];
B = [ 5  ;  5 ];
x1old = 0 ,x2old = 0  //intial assumption

disp('x1 = 5 + 3*x2 ')
disp('x2 = 5 - 3*x1 ')
 
for i = 1:3
    
    x1 = 5 + 3*x2old ;
    x1old = x1;   
    x2 = 5 - 3*x1old ;
    x2old = x2; 
    
     printf('\n Iteration : %i  x1 = %i and x2 = %i\n',i,x1,x2)
     
end
disp('It is clear that the process do not converge towards the solution, rather it diverges.')
