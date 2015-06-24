//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.4
//page 203
ieee (2)
s=%s;
A=s^5+s^4+2*s^3+2*s^2+11*s+10;
b=coeff(A);
n=length(b);
B=routh_t(A);
K=B;
c=0;
syms eps;
x=limit(eps,eps,0);
y=limit(((-1+2*eps)/eps),eps,0);
z=limit(((-1+2*eps-10*eps^2)/(-1+2*eps)),eps,0);
//after putting the limit we get:
K(3,1)=0;
K(4,1)=-%inf;
K(5,1)=1;
disp(K,"routh_table:")
printf("There are two sign changes of first column ,hence the system is unstable \n" )

