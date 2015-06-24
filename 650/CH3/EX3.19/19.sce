clc;
u=0.153; //Ns/m^2
r=0.05; // m
N=30; // rps
t=2/10^5; //s
L=0.2; // m

tau=u*(2*%pi*N*r/t);

F=tau*2*%pi*r*L;

T=F*r;

w=2*%pi*N;
P=T*w;
 
disp("The torque on the bearing is found to be ");
disp(T);
disp("Nm");
disp("and the power required to overcome the frictional resistance is ");
disp(P);
disp("W");