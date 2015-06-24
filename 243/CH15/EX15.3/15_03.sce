//Example No. 15_03
//Poisson's Equation
//Pg No. 490
clear ; close ; clc ;

//D2f = 2*x^2 * y^2
// f = 0
// h = 1 
//Point 1 : 0 + 0 + f2 + f3 - 4f1 = 2(1)^2 * 2^2
//          f2 + f3 - 4f1 = 8
//Point 2 : 0 + 0 + f1 + f4 -4f2 = 2*(2)^2*2^2
//           f1 - 4f2 = f4 = 32
//Point 3 : 0 + 0 + f1 + f4 - 4f4 = 2*(1^2)*1^2
//           f1 -4f3 + f4 = 2
//Point 4 : 0 + 0 + f2 + f3 - 4f4 = 2* 2^2 * 1^2
//            f2 + f3 - 4f4 = 8
//Rearranging the equations
//            -4f1 + f2 + f3 = 8
//             f1 - 4f2 + f4 = 32
//             f1 - 4f3 + f4 = 2
//              f2 + f3 - 4f4 = 8
A = [ -4 1 1 0 ; 1 -4 0 1 ; 1 0 -4 1 ; 0 1 1 -4]
B = [ 8 ; 32 ; 2 ; 8 ]
C = A\B ;
mprintf('The solution is \n f1 = %f \n f2 = %f \n f3 = %f \n f4 = %f \n ', C(1),C(2),C(3),C(4))