//Example 3_32
clc;
clear;
close;
format('v',6);
//given data :
V=110;//V
f=50;//Hz
ZA=2;//ohm
ZB=3+%i*4;//ohm
ZC=2-%i*2;//ohm
ZAB=ZA*ZB/(ZA+ZB);//ohm
ZP=ZAB*ZC/(ZAB+ZC);//ohm
ZD=1+%i*1;//ohm
z=ZP+ZD;//ohm
zmag=abs(z);//A
zang=atand(imag(z)/real(z));//degree
disp(zang,zmag,"(a) Total impedence, magnitude(ohm) & Angle(degree) are");
I=V/abs(z);//A
format('v',5);
disp(I,"(b) Current taken by circuit(A)");
format('v',7);
ID=I;//A
RD=real(ZD);//ohm
PD=ID^2*RD;///W
disp(PD,"Power Consumed by branch D(W)");
//VPQ=I*ZP;
IA=I*abs(ZP)/abs(ZA);//A
RA=2;//ohm
PA=IA^2*RA;//W
disp(PA,"Power Consumed by branch A(W)");
IB=I*abs(ZP)/abs(ZB);//A
RB=3;//ohm
PB=IB^2*RB;//W
disp(PB,"Power Consumed by branch B(W)");
IC=I*abs(ZP)/abs(ZC);//A
RC=2;//ohm
PC=IC^2*RC;//W
disp(PC,"Power Consumed by branch C(W)");
P=PA+PB+PC+PD;//W
disp(P,"Total Power Consumed(W)");
//Answer is not accurate in the book.
