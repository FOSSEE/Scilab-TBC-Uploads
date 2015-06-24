//chapter 9
//example9.6
//page 335
fc=1.5*10^3;
x=1.414;//damping factor
C1=2/x;
disp(C1)
C2=x/2;
disp(C2)
R1=1;R2=1;
Rf=2;
Wc=1;
Wc=2*3.14*fc;
disp(Wc)
R=R1/Wc;//to keep C1 nad C2 unchanged
disp(R)
Rf=2*R
R1=R*10^7;R2=R*10^7;//for maiking filter for practical use
disp(R1,R2)
C1=C1*10^-7;C2=C2*10^-7;//to fc remain unchanged
disp(C1,C2)