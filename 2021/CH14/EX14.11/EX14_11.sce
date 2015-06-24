//Finding of Qm.Nm
//Given
Qp=3000;
Np=0.025;
L1=1000;
L2=100;
//To Find
B=sqrt(L2);
Qm=Qp/(L1*L2*B);
Nm=(Qp/Qm)*1/(((L1*L2*(L2)^(2/3))/Np)*B*sqrt(1/L1));
disp(" Qm ="+string(Qm)+" m^3/sec");
disp(" Nm ="+string(Nm)+" No units");
