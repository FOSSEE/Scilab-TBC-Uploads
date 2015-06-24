//Caption:overall_gain
// example 4.4.2
//page 65
syms a b c d e f g h
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 

//path factor by D1,D2 and so on and graph determinant by D
P1=a*b*c*d;
P2=a*g;
L1=f;
L2=c*e;
L3=d*h;
//nontouching loops are  L1L2, L1L3
L1L2=L1*L2;
L1L3=L1*L3;
D1=1;
D2=1-L2;
D=1-(L1+L2+L3)+(L1L2+L1L3);
D=simple(D);
Y=(P1*D1+P2*D2)/D;
Y=simple(Y);
disp(Y,"x5/x1");