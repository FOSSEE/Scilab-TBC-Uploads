clc;
x=0.1*10^-3; // displacement of armature
B=0.8; // air gap flux density
A=200*10^-4; // area under pole
g=0.6*10^-2; // air gap length
uo=4*%pi*10^-7; // free space permeability
// after derived expression
p=(B^2*A*g*x)/(uo*(g^2-x^2));
printf('Unbalanced magnetic pull on armature is %f N',p); 
