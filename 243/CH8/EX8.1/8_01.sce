//Example No. 8_01
//Gauss Jacobi
//Page No. 254
clear ; close ; clc ;

A = [ 2  1  1 ; 3  5  2 ; 2  1  4];
B = [ 5  ;  15  ;  8];
x1old = 0 ,x2old = 0 , x3old = 0 //intial assumption of x1,x2 & x3

disp('x1 = (5 - x2 - x3)/2 ')
disp('x2 = (15 - 3x1 - 2x3)/5 ')
disp('x3 = (8 - 2x1 - x2)/4')

for i = 1:4
    printf('\n Iteration Number : %d\n',i)
    
    x1 = (5 - x2old - x3old)/2 ;
    x2 = (15 - 3*x1old - 2*x3old)/5 ; 
    x3 = (8 - 2*x1old - x2old)/4 ;
    
    printf(' \n x1 = %f\n x2 = %f\n x3 = %f\n',x1,x2,x3)
   
    x1old = x1;
    x2old = x2;
    x3old = x3;
    
end

