//clear//
//Example9.19:Analysis and Characterization of LTI System
//Inverse Lapalce Transform 
//X(S) = (e^s)/(s+1)
syms s t ;
h1 = exp(-1);//Inverse Laplace Transform of exp(s)
H2 =1/(s+1); 
h2 = ilaplace(H2,s,t)
h = h1*h2;
disp(h,"h(t)=")
//Result
// (18089*(%e^-t))/49171 =  0.3678794(%e^-t) 
