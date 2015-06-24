//Page Number: 10.19
//Example 10.2
clc;
//Given
Rb=1D+6; //b/s

//(a)
Aa=1D-3; //V
N0=1D-11; //W/Hz

Tb=1/Rb;
Eba=(Aa*Aa*Tb)/2;

//Pe=Q(z)
//where
za=sqrt((2*Eba)/N0);

Peb=(1/2)*erfc(za/1.414);
disp(Peb,'For Average bit error probability:');

//(b) Maintain Pb=2D-3
//From table
zb=2.9;
Ebb=((zb^2)*N0)/2;
P=Ebb*Tb;
Ab=sqrt((2*P));
disp('V',Ab,'Average Power:');

//(c)
Ac=100; //V
Rbc=1D+5; //p/s
N01=1D-2;; //W/Hz
Tbc=1/Rbc;
Ebc=(Ac*Ac*Tbc);

zc=sqrt(((2*Ebc)/N01));

Pec=(1/2)*erfc(zc/1.414);
//Pec=0.0000039
//nearly 10^-5
disp(10^-5,'For Average bit error probability for bipolar antipodal signals:');
