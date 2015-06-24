//Example 9.3
//Design of HP IIR filter
clc;
clear;
Fp=700//Hz
Fs=500//Hz
ap=1//dB
as=32//dB
FT=2000//Hz
//normalized angular edge frequencies in rad/sec
wp=2*%pi*Fp/FT;
ws=2*%pi*Fs/FT;
//prewarp the digital edge frequencies
Ap1=tan(wp/2);
As1=tan(ws/2);

Ap=1;//assuming 
As=(2*%pi*Ap1)*Ap/(2*%pi*As1);
disp(As,'As = ')
//Order 'N' of the filter
k  = Ap/As;
disp(1/k,'1/k = ');
k1 = 1/(sqrt(((10^(0.1* as))-1)/((10^(0.1*ap))-1)));
disp(1/k1,'1/k1 = ');
N = ceil(acosh(1/k1)/acosh(1/k));
disp(N,'N = ');
disp(N,'Order of the filter is, N = ');

e=sqrt(10^(0.1*ap)-1);
u=1/e + sqrt(1+(1/(e*e)));
a=Ap*(u^(1/N) - u^(-1/N))/2;
b=Ap*(u^(1/N) + u^(-1/N))/2;

for i=1:N
    phi(i)= %pi/2 + (2*i -1)*(%pi)/(2*N);
    p(i)=a*cos(phi(i)) + %i*b*sin(phi(i));
end
s=%s;
z=%z;
H1=1;
//Numerator of H(s)
for i=1:N
    H1=H1*(s + p(i))
end
//Denominator of H(s)
H2=horner(H1,0);
//Transfer function
H=H2/H1;
disp(H,'H = ')
//Bilnear Transformaation, s=((z-1/(z+1));
Hz=horner(H,(z-1)/(z+1));
disp(Hz,'The digital HP filter is Hz = ');





