//Example No. 9_02
//Page No. 278
clear ; close ; clc ;

C = [ 1 100-100 ; 1 101-100] 
p = [ 3/7 ; -4/7] 
a = C\p 
printf('\n a0 = %f \n a1 = %f \n',a(1),a(2));
x = poly(0,'x') ;
px = a(1) + a(2)*(x - 100) 
p100 = horner(px,100)
p101 = horner(px,101)
printf('\n p(100) = %f \n p(101) = %f\n',p100,p101)