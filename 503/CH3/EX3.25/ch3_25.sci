//find pu value of the equivalent ckt,steady state short ckt current and voltages

clc;
r=5;        //MVA rating
V_Bp=6.35;    //for primary
I_Bp=r*1000/V_Bp;
V_Bs=1.91;    //for secondary
I_Bs=r*1000/V_Bs;
//from resp tests
V1=.0787;
I1=.5;
V2=.1417;
I2=.5;
V3=.1212;
I3=.5;
X12=V1/I1;
X13=V2/I2;
X23=V3/I3;
X1=I1*(X12+X13-X23);
X2=I2*(X23+X12-X13);
X3=I3*(X13+X23-X12);
disp(X1,'X1(pu)');
disp(X2,'X2(pu)');
disp(X3,'X3(pu)');

V1=1;
I_sc=V1/X13;
I_scp=I_sc*I_Bp;    disp(I_scp,'sc current primary side(A)');
I_sct=I_sc*r*1000*1000/(400/sqrt(3));    disp(I_sct,'sc current tertiary side(A)');
V_A=I_sc*X3;
V_Aact=V_A*1.91*sqrt(3);
disp(V_Aact,'V_A(actual) line to line(kV)');