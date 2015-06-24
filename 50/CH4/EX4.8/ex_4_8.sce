   
 // example 4.8
 // caption: solution by quadratic interpolation;
 
 // x-degrees:[10 20 30]
 // hence x in radians is
 x=[3.14/18 3.14/9 3.14/6];
 f=[1.1585 1.2817 1.3660];
 n=2;
 
 
 P2=lagrangefundamentalpoly(x,f,n)
 
 // hence from P2 ,the exact value of f(3.14/12) is 1.2246; 
 // where as exact value is 1.2247;