//example 12.5
clc; funcprot(0);
cub=3000;
L=20+5;
Db=4;
Ap=%pi/4*Db^2;
alpha=0.55;
cu1=800;
L1=7;
L2=5.5;
cu2=1200;
p=%pi*2.5;
k=alpha*p*(cu1*L1+cu2*L2);//f*p*deltaLi
j1=6*cub*(1+0.2*L/Db);
j2=9*cub;
[qp]=min(j1,j2);
Qu=k/1000+qp*Ap/1000;
disp(Qu,"allowed load in kN");
//part b
k1=0.57; //from table
k2=0.89;
Qunet2=qp*Ap*k1+k*k2;
disp(Qunet2/1000,"allowed load in kN");

