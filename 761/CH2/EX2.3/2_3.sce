clc;
// page no 66
//prob no 2.3
C1=10*10^-12; C2=100*10^-12; L=1*10^-6;
// The effective capacitance is 
CT=(C1*C2)/(C1+C2);
disp(CT);
// The operating frequency is 
f0=1/(2*%pi*sqrt(L*CT));
disp('Hz',f0,'1)The operating frequency is');
// The feedback fraction is given approximately by
B=-C1/C2; 
disp(B,'The feedback fraction is');
// For the common-base ckt, the op-freq is same but the feedback fraction willbe different.
C1=100*10^-12; C2=10*10^-12;
// It is given by 
B=C2/(C1+C2);
disp(B,'The feedback fraction is');