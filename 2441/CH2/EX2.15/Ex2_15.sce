//exa 2.15
clc;clear;close;
format('v',7);
P1=poly(0,'P1');
P2=poly(0,'P2'); 
P3=poly(0,'P3');
Q1=0.002*P1^2+0.86*P1+20;//tons/hour
Q2=0.004*P2^2+1.08*P2+20;//tons/hour
Q3=0.0028*P3^2+0.64*P3+36;//tons/hour
Pmax=120;//MW
Pmin=36;//MW
P=200;//MW
C=500;//Rs./ton
//C1=C*Q1;C2=C*Q2;C3=C*Q3;//Rs./ton
dC1bydP1=2*P1+430;//Rs./hour
dC2bydP2=4*P2+540;//Rs./hour
dC3bydP3=2.8*P3+320;//Rs./hour
//P1+P2+P3=P
A1=[1 1 1];//Coefficient Matrix
B1=[P];//Coefficient Matrix
//For minimal cost above 3 equation should be equal
//eqn1=2*P1-4*P2+430-540;
//eqn2=4*P2-2.8*P3-320+540;
A2=[0 4 -2.8];//Coefficient Matrix
B2=[-540+320];//Coefficient Matrix
//eqn3=-2*P1+2.8*P3+320-430;
A3=[-2 0 2.8];//Coefficient Matrix
B3=[430-320];//Coefficient Matrix
//solving by matrix method
A=[A1;A2;A3];//Coefficient Matrix
B=[B1;B2;B3];//Coefficient Matrix
X=A^-1*B;//Solution Matrix
P1=X(1);//MW
P2=X(2);//MW
P3=X(3);//MW
Pmax=120;//MW
Pmin=36;//MW
if P2<Pmin then
   P2=Pmin;//MW     
end;
//P1+P3=P-P2//eqn(4)
A1=[1 1];//Coefficient Matrix
B1=[P-P2];//Coefficient Matrix
//eqn3=-2*P1+2.8*P3+320-430;
A2=[-2 2.8];//Coefficient Matrix
B2=[430-320];//Coefficient Matrix
//solving by matrix method
A=[A1;A2];//Coefficient Matrix
B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//Solution Matrix
P1=X(1);//MW
P3=X(2);//MW
disp("According to optimum scheduling, Load distriution is :");
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
disp(P3,"P3(MW) : ");
