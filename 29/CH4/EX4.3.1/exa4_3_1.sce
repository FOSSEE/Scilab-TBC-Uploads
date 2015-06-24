//Caption:overall_transmittance
// example 4.3.1
//page 63
syms G1 G2 H1;
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
L1=-G1*H1;
L2=-G2*H1;
P1=G1;
P2=G2;
D1=1;
D2=1;
D=1-(L1+L2);
Y=(P1*D1+P2*D2)/D;
Y=simple(Y)
disp(Y,"C(s)/R(s)=")