clc
V=230+%i*0;            //Assigning values to parameters
L=10*10^-3;
f=50;
R=10;
Xl=2*%pi*f*L;
Xc=1/(2*%pi*f*C);
Z1=10+%i*3.14;
Z2=10-%i*6.37;
Z=(Z1*Z2)/(Z1+Z2);
I=V/Z;
I1=V/Z1;
I2=V/Z2;
[r,t]=polar(Z1);
[ro,th]=polar(Z2);
[rot,tt]=polar(Z);
pf1=cos(t);
pf2=cos(th);
pft=cos(tt);
P1=I1*I1*R;
P2=I2*I2*R;
disp("Ohms",polar(Z),"Total Impedance");
disp("Amperes",polar(I1),"Branch current I1");
disp("Amperes",polar(I2),"Branch current I2");
disp(polar(pf1),"Power factor of branch 1");
disp(polar(pf2),"Power factor of branch 2");
disp(polar(pft),"Total Power factor");
disp("Watts",polar(P1),"Power consumed by branch 1");
disp("Watts",polar(P2),"Power consumed by branch 2");