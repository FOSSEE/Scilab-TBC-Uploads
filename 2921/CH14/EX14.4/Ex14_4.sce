clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-14.4 Page No.321\n');

P=5.31;

mprintf('\n Horsepower rating = %f hp.',P);

Nti=12;
N1=1800;
N2=900;

//Output sprocket
Nto=(N1/N2)*Nti;

mprintf('\n Number of tooth on output sprocket = %f.',Nto);

//Surface speed
Pc=0.5;
D1=Pc*Nti/%pi;
n=1800;
Vm=%pi*D1*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

mprintf('\n Type of lubrication - Bath or disc lubrication');

//Length of chain
C=10;
D2=Pc*Nto/%pi;

L1=2*C+1.57*(D1+D2)+(D2-D1)^2/(4*C);

//Use 29 or 30 inch chain

L=30;

mprintf('\n Length of chain = %f in.', L);

hp=5.31;

T=63000*hp/n;

F=2*T/D1;

mprintf('\n Force in chain = %f lb.',F);

//Comparism with ultimate strength 3700 lb - not a valid comparison because of speed etc.
