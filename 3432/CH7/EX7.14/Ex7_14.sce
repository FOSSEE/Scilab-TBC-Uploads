//Example 7.14
//Analysis of state equations of Tape Drive.
//compute the poles, zeros  and transfer function of Tape Drive System.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space matrices of Tape Drive System

F=[0 2 0 0 0;
-0.1 -0.35 0.1 0.1 0.75;
0 0 0 2 0;
0.4 0.4 -0.4 -1.4 0;
0 -0.03 0 0 -1];
G=[0 0 0 0 1]';
H2=[0 0 1 0 0];
H3=[0.5 0 0.5 0 0];
Ht=[-0.2 -0.2 0.2 0.2 0];
//------------------------------------------------------------------
//Poles (eigen values) of the system
p=clean(spec(F));

disp(p,"P","Poles of Tape Drive System are (for any output)")
disp("************************************************************")


disp("pole and zero polynomials and transfer function...
 for a system with output H2")
sys2=syslin('c',F,G,H2,0);
[d2 num2 den2]=ss2tf(sys2);
N2=coeff(num2);
D2=coeff(den2);
disp(D2,"D2",N2,"N2")
// zeros of the system with output H2
[zer2]=trzeros(sys2)
disp(zer2,"ZER2","zeros are")
// transfer function of the system with output H2
G2=clean(num2/den2);
disp(G2,"G2(s)=N2(s)/D2(s)=")
disp("************************************************************")

disp("pole and zero polynomials and transfer function for a...
 system with output H3")
sys3=syslin('c',F,G,H3,0);
[d3 num3 den3]=ss2tf(sys3);
N3=coeff(num3);
D3=coeff(den3);
disp(D3,"D3",N3,"N3")
// zeros of the system with output H3
[zer3]=trzeros(sys3)
disp(zer3,"ZER3","zeros are")
// transfer function of the system with output H3
G3=clean(num2/den2);
disp(G3,"G3(s)=N3(s)/D3(s)=")
disp("************************************************************")


disp("pole and zero polynomials and transfer function for a...
 system with output Ht")
syst=syslin('c',F,G,Ht,0);
[dt numt dent]=ss2tf(syst);
Nt=coeff(numt);
Dt=coeff(dent);
disp(Dt,"Dt",Nt,"Nt","zeros are")
// zeros of the system with output Ht
[zert]=trzeros(syst)
disp(zert,"ZERT")
// transfer function of the system with output Ht
Gt=clean(numt/dent);
disp(Gt,"G(s)=Nt(s)/Dt(s)=")
disp("************************************************************")
//------------------------------------------------------------------

