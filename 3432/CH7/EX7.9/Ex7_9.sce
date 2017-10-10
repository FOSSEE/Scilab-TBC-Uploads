//Example 7.9
//State Equations in Modal Canonical Form.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
g1=1/s^2;
g2=-1/(s^2+2*s+4);
Gs=g1+g2;
//------------------------------------------------------------------
// State space representation in modal canonical form
sys1=tf2ss(g1);
sys2=tf2ss(g2);
[F1,G1,T1]=canon(sys1.A, sys1.B)
H1=sys1.C*T1;

[F2,G2,T2]=canon(sys2.A, sys2.B)
H2=sys2.C*T2;

F=[F1 zeros(2,2);zeros(2,2) F2];
G=[G1;G2];
H=[H1,H2];
J=0;
disp(J,"J",H,"H",G,"G",F,"F","System in modal canonical form")
//------------------------------------------------------------------
 //As Y=G*U;  consatnts k1 and k2  are taken out from G1 and G2 will be 
 //multiplied to H1 and H2 

// So alternately, it can be reprsented as
k1=-1;k2=-2;
F=[F1 zeros(2,2);zeros(2,2) F2];
G=[G1/k1;G2/k2];
H=[H1*k1,H2*k2];
J=0;
disp(J,"J",H,"H",G,"G",F,"F","System in modal canonical form")
//------------------------------------------------------------------

