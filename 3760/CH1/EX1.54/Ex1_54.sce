clc;
z1=0.4+2.2*%i; // leakage impedance referred to secondary for transformer 1
s1=510; // secondary no load voltage for transformer 1
z2=0.6+1.7*%i; // leakage impedance referred to secondary for transformer 2
s2=500; // secondary no load voltage for transformer 2
zl=5+3*%i; // load impedance
// current shared by both transformers should be equal i.e. I1=I2
t=(s2*(z1)-(s1-s2)*zl-(s1-s2)*zl)/s1;
xn=sqrt(abs(t)^2-real(z2)^2); 
xe=xn-imag(z2); // external reactance to be added in series
printf('External reactance connected in series with leakage impedance of transformer 2 so that the  current shared by both transformers are equal is %f ohm',xe);  
