//Example 11.4

clc;clear;
z=poly(0,'z');
num=1-4*z^-1;
den=1+5*z^-1;
H=num/den;
num1=num*(1-5*z^-1);
den1=den*(1-5*z^-1);
H1=num1/den1;
c=coeff(numer(num1));
clength=length(c);
c=[c zeros(1,pmodulo(clength,2))];      //make length of 'c' multiple of 2
c0=[];c1=[];
for n=1:ceil(clength/2)                 //loop to separate even and odd powers of z
    c0=[c0 c(2*n-1) 0];
    c1=[c1 c(2*n) 0];
end
E0=poly(c0,'z','coeff')/z^n/den1;
E1=poly(c1,'z','coeff')/z^(n-2)/den1;
disp('Polyphase Components')
disp(E0,'E0(z)');
disp(E1,'E1(z)');