// example:-5.7,page no.-238.
// program to find the admittance matrix for bridge-T network.
syms Za Z1 Z2 Z3 Y Ya Yb D;
Za=[Z1+Z2 Z2;Z2 Z1+Z2];
Yb=[1/Z3 -1/Z3;-1/Z3 1/Z3];
Y1=1/Z1;Y2=1/Z2;
Ya=1/Za;
Y=Ya+Yb;
D=((Z2+Z1)^2-Z2^2);
// result
disp(Y,'admittance matrix for bridge-T network=')