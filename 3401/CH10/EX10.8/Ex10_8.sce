clc

T=300// K
k=1.3806*10^-23// JK^-1
e=1.6*10^-19// eV
epsilon=8.85*10^-14 //V
eps=11.7
NB=10^16//cm^-3
Vpt=25//V
WB=0.5*10^-4


//Vpt=(e*WB^2*NB*(NC+NB))/(2*epsilon*eps*NC)
a=(Vpt*2*epsilon*eps)/(e*WB^2*NB)
disp(a)
NC=NB/(a-1)
disp(NC,"NC in cm^-3 is=")
