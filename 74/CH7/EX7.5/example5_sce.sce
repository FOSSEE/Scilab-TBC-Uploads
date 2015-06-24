//chapter 7
//example 7.5
// page 280
Vsat=15;
Vout=7.5;
fo=5000;
R2=10*10^3;//let assume (use a 50k POT)
R3=(2*Vsat*R2)/Vout;
disp(R3)
C=.01*10^-6;//let assume
R1=R3/(4*C*R2*fo);//fo=R3/4R1C1R2
disp(R1)