F=60;P=4;N=1740;R1=0.5;
R2=0.5;X1=1;X2=1;Xm=35;
I=1.1;Peak=10;H=5;H1=7;
Phase=3;

Ns=120*F/P
 
S1=(Ns-N)/Ns
 
A=R2/S1

Z1=(Xm*%i)*(A+X1*%i)/(A+X2*%i+Xm*%i)
 
Rth=12.08;

Pg1=Phase*((I*Peak)/sqrt(2))^2*Rth

Wsyn=(Ns/60)*2*%pi
 
T1=Pg1/Wsyn

Ns1=-(120*H*F)/P

S2=(Ns1-N)/Ns1
 
B=R2/S2

Xm1=H*Xm
 
hX2=H*X2

Z2=Xm1*%i*(B+hX2*%i)/(B+hX2*%i+Xm1*%i)
 
Rth2=0.39;

Pg2=Phase*((0.22*Peak)/sqrt(2))^2*Rth2

Wsyn2=(Ns1/60)*2*%pi
 
T2=Pg2/Wsyn2

Ns3=(120*H1*F)/P
 
S3=(Ns3-N)/Ns3
 
C=R2/S3

Xm3=H1*Xm

hX3=H1*X2
 
Z3=Xm3*%i*(C+hX3*%i)/(C+hX3*%i+Xm3*%i)
 
Rth3=0.54;

Pg3=Phase*((0.16*Peak)/sqrt(2))^2*Rth3

Wsyn3=(Ns3/60)*2*%pi

T3=Pg3/Wsyn3
