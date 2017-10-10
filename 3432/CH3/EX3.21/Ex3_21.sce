//Example 3.21
//Series, Parallel and Feedback connections of TF blocks 
//to get effective TF.

clear;
clc;
//------------------------------------------------------------------
//Transfer function block G1
num1=[2];
den1=[1];
Ns=poly(num1,'s','coeff');
Ds=poly(den1,'s','coeff');
sysG1=syslin('c',Ns/Ds);

//Transfer function block G2
num2=[4];
den2=[0 1];
Ns=poly(num2,'s','coeff');
Ds=poly(den2,'s','coeff'); 
sysG2=syslin('c',Ns/Ds);

//Transfer function block G4
num4=[1];
den4=[0 1];
Ns=poly(num4,'s','coeff');
Ds=poly(den4,'s','coeff');
sysG4=syslin('c',Ns/Ds);

//Transfer function block G6
num6=[1];
den6=[1];
Ns=poly(num6,'s','coeff');
Ds=poly(den6,'s','coeff');
sysG6=syslin('c',Ns/Ds);

//Effective transfer function
// (+) operator for paralle connection, 
// (*) operator for series connection
// (/.)operator for feedback connection
sysG=(sysG1 + sysG2) * sysG4 /. sysG6
disp(sysG, "The effective transfer function is")
//------------------------------------------------------------------
