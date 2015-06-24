//Chapter 5
//Example 5.4
//page 138
//to find sending end voltage and voltage regulation of a medium transmission line system
clear;clc;
D=300;
r=0.8;
L=0.461*log10(D/(0.7788*r));
C=0.0242/(log10(D/r));
R=0.11*250;
X=2*%pi*50*L*0.001*250;
Z=R+%i*X;
Y=%i*2*%pi*50*C*0.000001*250;
Ir=((25*1000)/(132*sqrt(3)))*(cosd(-36.9)+%i*sind(-36.9));
Vr=(132/sqrt(3));
A=(1+(Y*Z/2));
Vs=A*Vr+Z*Ir*10^(-3);
printf('\n\nVs(per phase)=(%0.2f+%0.2f)kV',real(Vs),imag(Vs));
Vs=abs(Vs)*sqrt(3);
printf('\n\n|Vs|(line)=%d kV',Vs);
Vr0=Vs/abs(A);
printf('\n\n|Vr0|(line no load)=%0.1fkV',Vr0);
Vol_regu=(Vr0-132)/132;
printf('\n\nVoltage Regulation=%0.1f%%\n\n',Vol_regu*100);
