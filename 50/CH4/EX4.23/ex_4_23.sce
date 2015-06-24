// example: 4.23;
// piecewise cubical interpolating polinomials:

X=[-3 -2 -1 1 3 6 7];
F=[369 222 171 165 207 990 1779];
//  we need to apply legranges interpolation in sub-ranges [-3 ,1];[1,7];


 x=poly(0,"x");
 
  // 1) in the range [-3,1]
  x=[-3 -2 -1 1];
  f=[369 222 171 165];
  n=3;
P2=lagrangefundamentalpoly(x,f,n);

 // 2) in the range [1,7]
 x=[1 3 6 7];
 f=[165 207 990 1779];
n=3;
P2=lagrangefundamentalpoly(x,f,n) 

 
 
 // hence, 
 disp('f(6.5)=1339.25');