//Chapter 12
//Example 12.6
//page 457
//To find steady state power limit
clear;clc;

V=1.0; //infinite bus volatge
Vt=1.2; //terminal volatge
Xd=0.5*%i; //synchronous generator reactance
X=%i; //series reactance
//by solving the expressions given in the textbook
theta=acosd(0.5/1.8);
printf('\n\ntheta=%0.3f deg',theta);
Vt=Vt*(cosd(theta)+%i*sind(theta));
printf('\nVt=%0.3f+j%0.3f pu',real(Vt),imag(Vt));
I=(Vt-V)/X;
printf('\nI=%0.3f+j%0.3f pu',real(I),imag(I));
E=Vt+Xd*I;
printf('\nE=%0.3f @ %d deg pu',abs(E),atand(imag(E)/real(E)));
Pmax=(abs(E)*abs(V))/abs(X+Xd);
printf('\n\nSteady state power limit is given by:\tPmax=%0.3f pu',Pmax);
E=1.2;Pmax=(abs(E)*abs(V))/abs(X+Xd);
printf('\n\nIf the generator emf is held fixed at a value 1.2pu,steady state power limit would be :\t Pmax=%0.2f pu\n\n',Pmax);