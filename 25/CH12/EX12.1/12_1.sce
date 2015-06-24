// example:-12.1,page no.-668.
//program to compute directivity,radiation intensity,F,the effective area.
syms Etheta Hphi ko no Io l r pi theta C phi lamda;
Etheta=((%i*ko*no*Io*l)/(4*pi*r))*sin(theta)*exp(-%i*ko*r);
Hphi=((%i*ko*Io*l)/(4*pi*r))*sin(theta)*exp(-%i*ko*r);
F=(r^2)*(Etheta*conj(Hphi));
Prad=C*integ(integ(sin(theta)^3,theta),phi);
Prad=limit(Prad,theta,pi)-limit(Prad,theta,0);
Prad=limit(Prad,phi,2*pi)-limit(Prad,phi,0); // take cos(pi)=-1;
Prad=8*pi*C/3;
D=4*pi*C/Prad;
Ac=((lamda^2)*D)/(4*pi);
disp(F,'the radiation intensity is given by = ')
disp(D,'directivity is given by = ')
disp(Ac,'the effective area of the dipole = ')