clc
V=200;                //Assigning values to parameters
R=20;
f=50;
L=0.1;
Xl=2*%pi*f*L;
C=50*10^-6;
Xc=1/(2*%pi*f*C);
X=Xc-Xl;
Z=R-%i*X;
[Ro,theta]=polar(Z)
I=V/Ro;
PF=cos(theta);
PA=V*I*PF;
PR=V*I*sin(theta);
P=V*I;
disp("Amperes",I,"Circuit Current");
disp("Ohms",Z,"Circuit Impedance");
disp(real(PF),"Power Factor");
disp("Watts",real(PA),"Active Power");
disp("VAR",real(PR),"Reactive Power");
disp("Watts",P,"Apparen Power");