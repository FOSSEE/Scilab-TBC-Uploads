//Finding of D,d number of jets
//Given
E=0.86;
Dr=10;
Cv=0.98;
a=0.45;
Sp=735.75*1000;
H=200;
g=9.81;
N=800;
rho=1000;
//To Find
V=Cv*sqrt(2*g*H);
u=V*a;
D=(60*u)/(%pi*N);
d=(D/10);
Q1=(%pi/4)*(d^2)*V;
Q2=1/((E*rho*g*H)/Sp);
j=Q2/Q1;disp(Q2);
disp("D= "+string(D)+" meter");
disp("d= "+string(d)+" meter");
disp("Number of Jets ="+string(j)+" nos");
