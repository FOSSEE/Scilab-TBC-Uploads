//clear//
// Example10.34:Unilateral Ztransform- partial fraction
// X(z) =(3-(5/6)*(z^-1))/((1-(1/4)*(z^-1))*(1-(1/3)*(z^-1)))
z = %z;
s = %s;
syms n t;
a = 0.5;
[A]=pfss((3-(5/6)*(z^-1))/((1-(1/4)*(z^-1))*(1-(1/3)*(z^-1))))
x1 = horner(A(1),z)
x2 = horner(A(2),z)
x3 = A(3)
x = x1+x2+x3
disp(x1,"ans=")
disp(x2,"ans=")
disp(x3,"ans=")
disp(x,"ans=")
//Result

//      0.6666667     
//    -------------   
//  - 0.3333333 + z  

//      0.25     
//    --------   
//  - 0.25 + z  

//3

//sum of these, gives the original value
//                        2        
//       - 0.8333333z + 3z         
//    -------------------------    
//                              2  
//    0.0833333 - 0.5833333z + z   
