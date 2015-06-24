clc;//e.g 28.14
L=0.8;
C1=0.08*10**-12;
C2=1*10**-12;
R=5*10**3;
fs=1/(2*%pi*sqrt(L*C1));
disp('MHZ',fs*10**-6,"fs=");
C=(C1*C2)/(C1+C2);
fp=1/(2*%pi*sqrt(L*C));
disp('MHZ',fp*10**-6,"fp=");
