//Example 7.11
//Poles and Zeros of Tape Drive System.
//Also, Transform the system into modal form

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
// Poles (eigen values) of the system
p=clean(spec(F));
disp(p,"Poles of Tape Drive System are")

//It requires complete state-space model.
sys=syslin('c',F,G,[Ht;H2;H3],[0;0;0])

// zeros of the system
[tr]=trzeros(sys)
disp(tr,"Transmission zeros of Tape Drive System are")
//------------------------------------------------------------------
// State space representation in modal canonical form with H3 output only.

[m Am1]=spec(F)
T1=[1/2 -%i/2;1/2 %i/2];
//transformation for a complex pair of eigen values.
temp=eye(5,5);
T=[T1 zeros(2,3);zeros(3,2) eye(3,3)]; 
temp(1,1)=-1; temp(2,2)=-1; //for change in input output signs as desired
M=m*T*temp //real Modal transformation

Am=clean(M\F*M);
Bm=clean(M\G);
Cm=clean(H3*M);
Dm=0;

disp(Dm,"Dm",Cm,"Cm", Bm,"Bm",Am,"Am","Tape Drive System in modal canonical form")
//------------------------------------------------------------------------------
