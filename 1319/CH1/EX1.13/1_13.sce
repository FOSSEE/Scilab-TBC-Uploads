//Series Resonace of a RLC circuit with 2 coils.

clc;
clear;

R1=0.5;
R2=1.5;
R3=0.5;
C1=6*(10^-6);
C2=12*(10^-6);
L1=25*(10^-3);
L2=15*(10^-3);

// Both the coils are connected in series

Req=R1+R2+R3;

Leq=L1+L2;

Ceq=(C1*C2)/(C1+C2);

f=1/((2*%pi)*sqrt(Leq*Ceq));

Q=2*%pi*f*Leq/Req;

Q1=2*%pi*f*L1/(R1+R3);
Q2=2*%pi*f*L2/R2;

mprintf('i) The frequency of resonance = %f Hz or Wo = %f rad/sec \n',f,2*%pi*f)
mprintf('ii) Q of the circuit = %f \n',Q)// The total resistance should be considered, Error in the textbook
mprintf('iii) Q of coil 1 is %f and Q of coil 2 is %f \n',Q1,Q2)
