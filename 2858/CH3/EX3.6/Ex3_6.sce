//example 3.6
clc; funcprot(0);
Df=0.7;
//from table
Nq=18.4;
Ny=22.4;
q=12.6;
phi=30; //angle
L=1.5;
Fyd=1;
Gamma=18;
L1=0.85*1.5;
L2=0.21*1.5;
B=1.5;
A=1/2*(L1+L2)*B;
B1=A/L1; //B'
Fqs=1+B1/L1*tan(phi*%pi/180);
Fys=1-0.4*B1/L1;
Fqd=1+2*tan(phi*%pi/180)*(1-sin(phi*%pi/180))^2*Df/B;
Qult=A*(q*Nq*Fqs*Fqd+1/2*Gamma*B1*Ny*Fys*Fyd);
disp(Qult,"ultimate load in kN");

