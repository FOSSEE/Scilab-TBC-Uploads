//chapter 7
//example 7.4
//page 277
C=.05*10^-6;// let choose capacitor C<1uf
C1=C;C2=C;
f=1000;
R=1/(2*3.14*f*C);
disp(R)
//for proper operation gain of non inverting op-amp must be 3
R4=%s
R3=R4*(3-1);//1+R3/R4=3
disp(R3)
R4=10000;// assume
R3=2*R4
disp(R3,R4)