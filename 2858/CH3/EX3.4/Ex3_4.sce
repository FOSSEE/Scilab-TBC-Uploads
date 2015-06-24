//example 3.4
clc; funcprot(0);
q=110*4; //lb/ft^2
Nq=33.3;
phi=35;
Df=4;
B=6;
Gamma=110;
Ngamma=48.03;
B1=6-2*0.5;
Fqi=1;
Fyi=1;
Fyd=1;
Fqs=1;
Fys=1;
Fqd=1+2*tan(phi*%pi/180)*(1-sin(phi*%pi/180))^2*Df/B;
qu=q*Nq*Fqs*Fqd*Fqi+1/2*B1*Gamma*Ngamma*Fys*Fyd*Fyi;
Qult=B1*1*qu;
disp(Qult,"ultimate bearing capacity in lb/ft");
disp(Qult/2000,"ultimate bearing capacity in ton/ft");

