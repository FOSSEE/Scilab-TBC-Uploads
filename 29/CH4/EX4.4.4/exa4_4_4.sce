//Caption:transfer_function_using_mason's_gain_formula
// example 4.4.4
//page 67
syms G1 G2 G3 H1;
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G1*G2*1;
P2=G1*G3;
L1=G2*(-1);
L2=G3*(-1);
L3=-G1*G2*H1
D1=1;
D2=1;
D=1-(L1+L2+L3);
Y=(P1*D1+P2*D2)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=")