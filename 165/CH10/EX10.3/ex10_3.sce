//Example 10.3
clc;
//Given Data
C1=500*10^-12;
C2=50*10^-12;
f1=2*10^6;
f2=6*10^6;
//Since f2=3f1 we can equate the equations
//as follows
// 1/(2*pi*(L(C2+CS))^.5) = 3/(2*pi*(L(C1+CS))^.5)
// => C1+Cs = 9 (C2 +Cs)
// or Cs=(C1-9C2)/8
Cs=(C1-9*C2)/8;            //Self Capacitance
disp(Cs,'Value of Self Capacitance is:')