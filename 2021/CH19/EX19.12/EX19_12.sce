//Finding of Head Discharge , Ratio of Power
//Given
Q1=0.035;
H1=25;
D1=0.5;
N1=1200;
D2=0.3;
N2=2000;
//To Find
H=(D2*N2*sqrt(H1))/(D1*N1);
H2=H^2;
Q=(Q1*D2^3*N2)/(D1^3*N1);
Pr=(D1/D2)^5*(N1/N2)^3;
disp("Head ="+string(H2)+" meter");
disp("Discharge ="+string(Q)+" m^3/sec");
disp("Power Ratio ="+string(Pr)+" No Units");
