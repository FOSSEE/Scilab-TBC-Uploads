//exa 2.22
clc;clear;close;
format('v',10);
//F1=0.05*P1^2+21.5*P1+800;//Rs./hr
//F2=0.1*P2^2+27*P2+500;//Rs./hr
//F3=0.07*P3^2+16*P3+900;//Rs./hr
PT=200;//MW
Pmax=120;//MW
Pmin=39;//MW
//coefficients : 
c1=0.05;c2=0.1;c3=0.07;
b1=21.5;b2=27;b3=16;
a1=800;a2=500;a3=900;
lambda=(1/2*[b1/c1+b2/c2+b3/c3]+PT)/[1/2*[1/c1+1/c2+1/c3]];
//Economical loading dF1/dP1=dF2/dP2=dF3/dP3
P1=poly(0,'P1');P2=poly(0,'P2');P3=poly(0,'P3');
dF1bydP1=2*0.05*P1+21.5;
dF2bydP2=2*0.1*P2+27;
dF2bydP3=2*0.07*P3+16;
//Solving equation :
A=[2*0.05 0 0;0 2*0.1 0;0 0 2*0.07];
B=[lambda-21.5;lambda-27;lambda-16];
X=A^-1*B;
P1=X(1);//MW
P2=X(2);//MW
P3=X(3);//MW
if P2<Pmin then
    P2=Pmin;
end
P1plusP3=PT-P2;//MW
//dF1/dP1=dF3/dP3
//Let loads are P1 & P1plusP3-P1
clear('P1','P3');
P1=poly(0,'P1');P3=poly(0,'P3');
 eqn=2*0.05*P1+21.5-2*0.07*(P1plusP3-P1)-16;
 P1=roots(eqn);//MW
 P3=P1plusP3-P1;//MW
 disp("Optimum scheduling :");
 disp(P3,P2,P1,"Loads P1, P2 & P3 in MW are :");
 F1=0.05*P1^2+21.5*P1+800;//Rs./hr
F2=0.1*P2^2+27*P2+500;//Rs./hr
F3=0.07*P3^2+16*P3+900;//Rs./hr
C=F1+F2+F3;//Rs/hour
disp(C,"For this schedule, total cost per hour(Rs./hour)");
