// illustrating the procedure for economic scheduling
clear
clc;
q2=25;
q3=25
q1=70-(q2+q3);
Wo=120;
W3=50;
Wi1=0;
Wi2=0;
W1=Wo+Wi1-q1;
W2=W1+Wi2-q2
PH1=9.81*(10^-3)*20*[1+(.5*.006*(120+100))]*(20-2);
PH2=9.81*(10^-3)*20*[1+(.5*.006*(100+75))]*(23);// Answer in the book is not Correct due to wrong calculation
PH3=9.81*(10^-3)*20*[1+(.5*.006*(75+50))]*(23);
PT1=8-PH1;
PT2=12-PH2;
PT3=7-PH3;
L11=20+PT1;//dFT/dPT=PT+20
L12=20+PT2;//dF/dp=PT+20
L13=20+PT3;//dF/dp=PT+20
//dPL/dPH=0
L31=L11;
L32=L12;
L33=L13;
e=.006;
ho=.1962
Rho=2;
L21=L31*ho*[1+(.5*e*(2*Wo+Wi1-2*q1+Rho))]
L22=L21-L31*[.5*ho*e*(q1-Rho)]-L32*[.5*ho*e*(q2-Rho)]//for m=1
L23=L22-L32*[.5*ho*e*(q2-Rho)]-L33*[.5*ho*e*(q3-Rho)]//for m=2
G1=L22-L32*ho*[1+.5*.006*(2*100-2*25+2)]//G1=dF/dq2 Answer doent match due to wrong calculation of PH2 in a book;
G2=L23-L33*ho*[1+.5*.006*(2*W2+0-2*q3+Rho)]//G1=dF/dq3;
a=0.4;
qnew2=q2-a*G1;// Answer differs due to wrong calculation of PH2 in the book
qnew3=q3-a*G2;
q1=120-50-(qnew2+qnew3);
mprintf("Let q2=%.0f   q3=%.0f    q1=%.0f\n",q2,q3,q1);
mprintf("W1=%.0f    W2=%.0f\n",W1,W2);
mprintf("PH1=%.2f     PH2=%.3f    PH3=%.1f\n",PH1,PH2,PH3);
mprintf("Thermal generation during Three Intervals \n PT1=%.2f     PT2=%.2f    PT3=%.1f\n",PT1,PT2,PT3);
mprintf("Value of L1 for the three intervals, \n L11=%.2f    L12=%.2f    L13=%.1f\n",L11,L12,L13);
mprintf("Neglecting transmission losses we get\n L11=L31   L12=L32   L13=L33\n");
mprintf("L21=%.3f\n",L21)
mprintf("For m=1 and 2 we get \n L22=%.1f \n L23=%.1f\n",L22,L23);
mprintf("Gradient Vectors \n dF/dq2=%.2f\n dF/dq3=%.1f\n",G1,G2)
mprintf("q2new=%.3f \n q3new=%.1f\n q1=%.0f",qnew2,qnew3,q1)
