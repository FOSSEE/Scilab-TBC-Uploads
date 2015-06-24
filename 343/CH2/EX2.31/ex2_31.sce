clc
V=200+%i*0;             //Assigning values to parameters
R1=10;
R2=20;
R=R1+R2;
L1=0.05;
L2=0.1;
f=50;
Xl1=2*%pi*f*L1;
Xl2=2*%pi*f*L2;
Xl=Xl1+Xl2;
C=50*10^-6;
Xc=1/(2*%pi*f*C);
X=Xc-Xl;
Z=R-%i*X;
[Ro,theta]=polar(Z);
I=V/Z;
Z1=R1+%i*Xl1;
Z2=R2-%i*(Xc-Xl2)
[Ro1,Theta1]=polar(Z1);
[Ro2,Theta2]=polar(Z2);
[ro,th]=polar(I);
V1=ro*Ro1;
V2=ro*Ro2;
disp("Amperes",ro,"Circuit Current");
disp("Volts",V1,"Voltage V1");
disp("Volts",V2,"Voltage V2");