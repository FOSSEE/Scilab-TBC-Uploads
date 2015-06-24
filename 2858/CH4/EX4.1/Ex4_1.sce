//example 4.1
clc; funcprot(0);
FS=4;
q=110*2;
Nq=90;
Ny=50;
Gamma=110;
m1=0.34;
B=2.5;
L=2.5;
H=1.5;
phi=35;
m2=0.45;
Fqs=1-0.34*B/L;
Fys=1-0.45*B/L;
qu=q*Nq*Fqs+1/2*Gamma*Ny*Fys*B;
Qall=qu*B^2/FS;
disp(Qall,"bearing load in lb");

