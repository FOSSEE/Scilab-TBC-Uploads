//EX9_12 PG-9.32
clc
L=0.4;
C=0.085e-12;
R=5e3;
Cm=1e-12;
f=1/(2*%pi*sqrt(L*C));//series resonant frequency for crystal oscillator
printf("\n series resonant frequency for crystal oscillator fs=%.3f MHz \n",f*1e-6)
Ceq=C*Cm/(C+Cm);
fp=1/(2*%pi*sqrt(L*Ceq));//parallel resonant frequency for crystal oscillator
printf("\n parallel resonant frequency for crystal oscillator=%.3f MHz \n",fp*1e-6)
%increase=(fp-f)/f*100;
printf("\n increase in parallel frequency fp=%.3f %% \n",%increase)
w=2*%pi*f;
Q=w*L/R;//Q factor
printf("\n Therefore Q factor=%.3f \n",Q)
//in the book fs=0.856MHz is wrong,correct answer is fs=.863MHz
//in the book %increase=5.023% is wrong the correct answer is %increase=4.163%
//in the Q=430.272  which is wrong the correct answer is Q=433.861
