//Example No. 15_01
//Elliptic Equations
//Pg No. 488
clear ; close ; clc ;

l = 15
h = 5
n = 1 + 15/5
f(1,1:4) = 100 ;
f(1:4,1) = 100 ;
f(4,1:4) = 0 ;
f(1:4,4) = 0 ;

//At point 1 :  f2 + f3 - 4f1 + 100 + 100 = 0
//At point 2 :  f1 + f4 - 4f2 + 100 +   0 = 0
//At point 3 :  f1 + f4 - 4f3 + 100 +   0 = 0
//At point 4 :  f2 + f3 - 4f4 +   0 +   0 = 0
//
//Final Equations are
//         -4f1 + f2 + f3 + 0 = -200
//           f1 - 4f2 + 0 + f4 = -100
//           f1 + 0 - 4f3 + f4 = -100
//           0  + f2 + f3 - 4f4 = 0
A = [ -4 1 1 0 ; 1 -4 0 1 ; 1 0 -4 1 ; 0 1 1 -4 ]
B = [-200 ; -100 ; -100 ; 0]
C = A\B
mprintf('\n The solution of the system is \n f1 = %i \n f2 = %i \n f3 = %i \n f4 = %f \n ',C(1),C(2),C(3),C(4))