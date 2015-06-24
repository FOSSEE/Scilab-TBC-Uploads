clear;
clc;

//Caption : parameters of a Second collector to first emmitter feedback ampkifier
//Given Data
Rs=0;//in V
hfe=50;//in K
hie=1.1;//in K
hre=0;//in K
hoe=0;//in K

disp('We first calculate the effective load Rl1 at the first calculator');
r1=10;//in K
r2=47;//in K
r3=33;//in K
r4=1+0.1;//in K

Rl1=(r1*r2*r3*r4)/((r1*r2*r3)+(r1*r2*r4)+(r1*r3*r4)+(r2*r3*r4));
disp('K',Rl1,'Rl1=');

disp('Similarly for 2nd Transistor');
R1=0.1;//in K
R2=4.7;//in K
Rc1=R1+R2;
Rc2=4.7;//in K

Rl2=(Rc1*Rc2)/(Rc1+Rc2);
disp('K',Rl2,'Rl2=');

Re=(R1*R2)/(R1+R2);

disp('Voltage Gain of Transistor Q1');
Av1 = -(hfe*Rl1)/(hie+((1+hfe)*Re));
disp(Av1,'Av1=');

disp('Voltage Gain of Transistor Q2');
Av2=-(hfe*Rl2)/hie;
disp(Av2,'Av2=');

disp('Voltage Gain of two transistors in cascade without feedback');
Av=Av1*Av2;
disp(Av,'Av=');

B=R1/(R1+R2);//beta which is feedback
D=1+(B*Av);

Avf=Av/D;
disp(Avf,'Avf=');

disp('Input resistance without external feedback');
Ri=hie+(1+hfe)*Re;
disp('K',Ri,'Ri=');

Rif=Ri*D;
disp('K',Rif,'Rif=');

Ro=Rl2;
Rof=Ro/D;
disp('K',Rof,'Rof=');

//end