 // example 4.7
 // polinomial of degree 2;
 
 // f(0)=1;f(1)=3;f(3)=55;
 
 // using legrange fundamental polinomial rule,
 
 x=[0 1 3];                       // arrainging the inputs of the function as elements of a row, 
 f=[1 3 55];                       // arrainging the outputs of the function as elements of a row, 
 n=2;                               // degree of the polinomial;

 
 P2=lagrangefundamentalpoly(x,f,n)
 
 