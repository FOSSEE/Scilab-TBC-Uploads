clear;
//clc();
z=12.5 + (%i)*66;
y=(%i)*4.4*(10^(-4));
yS=sqrt(z*y);

aS=real(yS);

bS=imag(yS);

A=cosh(yS);

printf("\n the constant A is:  %f\n ",A);

D=A;

printf("\n the constant D is:  %f\n ",D);

zo=sqrt(z/y);
B=zo*sinh(yS);

printf("\n the constant B is:  %f\n ",B);

C=sinh(yS)/(zo);

printf("\n the constant C is:  %f\n ",C);

