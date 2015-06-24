clc;
// page no 68
//prob no 2.4
//Refer fig 2.22
c1=1000;c2=100;c3=10;//all values are in pf
//The effective total capacitance
Ct=1/((1/c1)+(1/c2)+(1/c3));
disp('pF',Ct,'The effective total capacitance is');
CT=Ct*10^-12;L=10^-6;
//The operating freq is
f0=1/(2*%pi*sqrt(L*CT));
disp('Hz',f0,'The operating freq is');