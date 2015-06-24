// example: 4.22;
// piecewise quadratic interpolating polinomials:

X=[-3 -2 -1 1 3 6 7];
F=[369 222 171 165 207 990 1779];
//  we need to apply legranges interpolation in sub-ranges [-3 ,-1];[-1,3],[3,7];

 x=poly(0,"x");
 
  // 1) in the range [-3,-1]
  x=[-3 -2 -1];
  f=[369 222 171];
  n=2;
P2=lagrangefundamentalpoly(x,f,n);

 // 2) in the range [-1,3]
 x=[-1 1 3];
 f=[171 165 207];
n=2;
P2=lagrangefundamentalpoly(x,f,n) 

 // 3) in the range [3,7] 
  x=[3 6 7];
 f=[207 990 1779];
n=2;
P2=lagrangefundamentalpoly(x,f,n) 



// hence, we obtain the values of f(-2.5)=48;  f(6.5)=1351.5;