//Caption:transfer_function
// example 12.1
//page 515
// we are solving this problem from signal flow graph approach
syms G H;
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=1*G*1
P2=1;
L1=-G;
L2=-G*H;
L3=G*H;
D1=1;
D2=1;
D=1-(L1+L2+L3);
D=simple(D)
Y=(P1*D1+P2*D2)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=");