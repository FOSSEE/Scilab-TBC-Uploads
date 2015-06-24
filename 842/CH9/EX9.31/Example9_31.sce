//clear//
//Example9.31:Causal LTI Systems described by differential equations
//and Rational System functions 
//Partial Fraction
//H(S) = ((s-1)/((s+1)*(s-2)))  
s =%s ;
syms t ;
[A] = pfss((2*s^2+4*s-6)/(s^2+3*s+2));
disp(A,"H(S)=")
//Result  H(S)=
//// - 8     
//    -----   
//    1 + s   
//     6     
//    -----   
//    2 + s  
//    
//    2
  
