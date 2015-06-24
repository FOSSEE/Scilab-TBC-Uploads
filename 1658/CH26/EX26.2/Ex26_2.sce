clc;
//e.g 26.2
L=100*10**-6;
C=100*10**-12;
R=5;
fo=0.159/sqrt (L*C);
disp('MHZ',fo*10**-6,"fo=");
Zp=L/(C*R);
disp('Kohm',Zp*10**-3,"Zp=");
