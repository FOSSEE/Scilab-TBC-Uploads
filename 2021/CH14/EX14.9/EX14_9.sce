//Finding of discharge through Model
//Given
A=50;
B=10;
C=sqrt(10);
Qp=1.5;
//To Find
D=A*B;disp(D);
Qm=(D)*(1/C);
Qm1=Qp/Qm;
disp(" Discharge Through Model ="+string(Qm1)+" m^3/sec");
