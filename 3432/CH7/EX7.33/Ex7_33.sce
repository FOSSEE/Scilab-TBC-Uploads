//Example 7.33
// DC servo system redesign with modified with dominant second
// order pole locations.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

// State space representation
//Transfer function model for DC Servo
s=poly(0,'s');
num=10;
den=s*(s+2)*(s+8);
Gs=syslin('c',num/den);

// State space representation
F=[-10 1 0;-16 0 1;0 0 0]
G=[0 0 10]';
H=[1 0 0];
J=0;
n=sqrt(length(F));
//Desired poles for the DC Servo system.
Pc=[-1.41+1.41*%i -1.41-1.41*%i -8]


// State feedback gain
K=ppol(F,G,Pc)
disp(K,'K=',"State feedback gain")

//Estimator - error roots are at
Pe=[-4.24+4.24*%i -4.24-4.24*%i -8]
exec .\acker_dk.sci;
Lt=ppol(F',H',Pe);
L=clean(Lt');
disp(L,'L=',"Observer gain")
//Error in book, Gain values are different in book.
//------------------------------------------------------------------
//Compensator Design
DK=-K*inv(s*eye(n,n)-F+G*K+L*H)*L;
DK=syslin('c',DK)
exec('./zpk_dk.sci', -1);
[pl,zr,Kp]=zpk_dk(DK*10);
disp(zr,"zeros",pl,"Poles",Kp*10,"Gain(includung system gain)")
Dcs=poly(zr,'s','roots')/poly(pl,'s','roots')
disp(Dcs,'Dcs=',"Compensator transfer function")
//------------------------------------------------------------------
