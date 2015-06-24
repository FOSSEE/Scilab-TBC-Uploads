//clear//
//Example9.20:Inverse Lapalce Transform 
//X(S) = ((s-1)/((s+1)*(s-2)))  
s =%s ;
syms t ;
[A] = pfss(s/((s+1)*(s-2)));
[B] = pfss(1/((s+1)*(s-2)));
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F3 = ilaplace(B(1),s,t)
F4 = ilaplace(B(2),s,t)
F = F1+F2-F3-F4;
disp(F,"f(t)=")
//Result
//f(t)= 33333329999999*exp(2*t)/99999970000000+6666664*%e^-t/9999997 
//i.e. f(t) =0.3333334*exp(2*t)+0.6666666*%e^(-t)
//Refer equation 9.120. (1/3)=0.3333 and (2/3) = 0.66666
