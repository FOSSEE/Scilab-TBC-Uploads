//first element in any row of rouths tabulation is zero
s=%s
m=s^4+s^3+2*s^2+2*s+3
r=coeff(m);  //Extracts the coefficient of the polynomial
n=length(r); 
routh=routh_t(m)
disp(routh,"routh=")
printf("since there are two sign changes in the rouths tabulation,sys is unstable")

