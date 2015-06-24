// to find the torque and gross mech power developed 

clc;
D=.3;
l=.2;
p=4;
fd=.4;        //flux density
phi=%pi*(D/p)*l*fd;        //flux/pole
n=1500;
Z=400;
A=4;
E_a=phi*n*Z*(p/A)/60;
I_a=25;
mp=E_a*I_a;
disp(mp,'gross mech power developed(W)');
T=mp/(2*%pi*n/60);
disp(T,'torque developed(Nm)');