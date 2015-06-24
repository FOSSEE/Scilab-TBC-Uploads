clc
R=7;             //Assigning values to parametrs
L=31.8*10^-3;
V=230;
f=50;
Xl=2*%pi*f*L;
Zcoil=sqrt(R*R+Xl*Xl);
I=V/Zcoil;
Phi=atan(Xl/R);
PF=cos(Phi);
P=V*I*cos(Phi);
disp("Amperes",I,"Circuit Current");
disp("Degrees",Phi,"Phase angle");
disp(PF,"Power factor");
disp("Watts",P,"Power consumed");