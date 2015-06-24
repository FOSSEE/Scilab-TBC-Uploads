clc;
//e.g 28.9
C1=0.001*10**-6;
C2=0.01*10**-6;
L=5*10**-6;
AV=C2/C1;
disp(AV);
C=(C1*C2)/(C1+C2)
fo=1/(2*%pi*sqrt(L*C));
disp('MHZ',fo*10**-6,"fo=");
