//Find characteristics impedance and propogation constant and ABCD constants
clear;
clc;
//soltion
//FUNCTIONS

function [z]=rxr(A,B)//Function for the multiplication of rectangular
    z(1)=A(1)*B(1)
    z(2)=A(2)+B(2)
endfunction

function [z]=rdr(A,B)//Function for the division in rectangular form
    z(1)=A(1)/B(1)
    z(2)=A(2)-B(2)
    endfunction

function [v]=p2r(q)//Function for polar to rectangular
    v(1)=abs(q)
    v(2)=atand(imag(q)/real(q))
endfunction

//given
Z=complex(14.1,51.48);
Y=complex(0,1.194*10^-3);
l=200;//length of the line
z=Z/l;
y=Y/l;
Zc=p2r(sqrt(z/y));
printf("Characteristics Impedance= %d∠%.2f° ohm\n",ceil(Zc(1)),Zc(2));
P=sqrt(z*y);//propogation constant
printf("Propagation constants= %f + i%f\n",real(P),imag(P));
al=real(P)*l;
bl=imag(P)*l;
yl=P*l;
A=p2r(cosh(yl));
printf("A = D = %.4f∠%.2f°\n",A(1),A(2));
B=rxr(Zc,p2r(sinh(yl)));
printf("B= %.2f∠%.2f° ohm\n",B(1),B(2));
C=rdr(p2r(sinh(yl)),Zc);
printf("C= %.6f∠%.2f° mho\n",C(1),C(2));
