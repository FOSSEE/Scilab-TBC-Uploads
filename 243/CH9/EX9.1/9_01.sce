//Example No. 9_01
//Pg No.277
clear ; close ; clc ;

printf('solving linear equations \n a0 + 100a1 = 3/7 \n a0 + 101a1 = -4/7 \n we get,\n');
C = [ 1 100 ; 1 101] 
p = [ 3/7 ; -4/7] 
a = C\p 
printf('\n a0 = %f \n a1 = %f \n',a(1),a(2));
x = poly(0,'x') ;
px = a(1) + a(2)*x 
p100 = horner(px,100)
p101 = horner(px,101)
printf('\n p(100) = %f \n p(101) = %f\n',p100,p101)