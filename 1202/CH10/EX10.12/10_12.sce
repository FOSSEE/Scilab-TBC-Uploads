clear
clc

//Example 10.12
disp('Example 10.12')

w=poly(0,"w")
s=%i*w;  //j or iota is i
G=10*s^3+17*s^2+8*s+1;//Kc has been removed here because in a single expression
//two polynomials are not allowed
w=roots(imag(G));
p=-real(G)//Real part of G
Kc=horner(p,w)

mprintf("The values outside which system is unstable \nare %f and %f",Kc(1),Kc(3))
