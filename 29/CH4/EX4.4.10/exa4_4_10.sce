//Caption:transfer_function_using_mason's_gain_formula
// example 4.4.10
//page 72
syms G1 G2 G3 G4 G5 H1 H2;
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G1*G2*G3*G4;
P2=G1*G5*G4;
L1=-G2*H1;
L2=-G3*H2;
D1=1;
D2=1;
D=1-(L1+L2);
D=simple(D)
Y=(P1*D1+P2*D2)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=")