//Caption:transfer_function
// example 12.3
//page 517
// we are solving this problem from signal flow graph approach
syms G1 G2 G3 G4 H2 H1 H3
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G2*G4;
P2=G2*G3*G4;
P3=G1*G3*G4;
L1=-G4*H1;
L2=-G3*G4*H1*H2;
L3=-G1*G3*G4*H1*H2*H3
D1=1;
D2=1;
D3=1;
D=1-(L1+L2+L3);
Y=(P1*D1+P2*D2+P3*D3)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=");