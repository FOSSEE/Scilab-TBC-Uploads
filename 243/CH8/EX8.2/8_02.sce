//Example No. 8_02
//Gauss Seidel
//Page No.261
clear ; close ; clc ;

A = [ 2  1  1 ; 3  5  2 ; 2  1  4];
B = [ 5  ;  15  ;  8];
x1old = 0 ,x2old = 0 , x3old = 0 //intial assumption

disp('(x1 = 5 - x2 - x3)/2 ')
disp('(x2 = 15 - 3x1 - 2x3)/5 ')
disp('(x3 = 8 - 2x1 - x2)/4')
 
for i = 1:2
     
    printf('\n Iteration Number : %d',i)
    
    x1 = (5 - x2old - x3old)/2 ;
    x1old = x1;   
    x2 = (15 - 3*x1old - 2*x3old)/5 ;
    x2old = x2; 
    x3 = (8 - 2*x1old - x2old)/4 ;
    x3old = x3;
    
     printf(' \n x1 = %f\n x2 = %f\n x3 = %f\n',x1,x2,x3)
     
end
