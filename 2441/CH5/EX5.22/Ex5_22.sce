//Example 5.22
clc;clear;close;
format('v',6);
C1=200;//MW
C2=100;//MW
R1=1.5;//%//speed regulation
R2=3;//%//speed regulation
L=100;//MW///Load on each bus
f=50;//Hz
RA=R1/100*f/C1;//Hz/MW
RB=R2/100*f/C2;//Hz/MW
//Let PA= generation at plant A
//PB=2*L-PA will be generation at plant B
//RA*PA=RB*PB
PA=RB*2*L/(RA+RB);//MW
PB=2*L-PA;//MW
disp(PA,"Load generation at plant A(MW)");
disp(PB,"Load generation at plant B(MW)");
Pt=PA-L;//MW///Power transfer
disp(Pt,"Power transfer from A to B(MW)");
