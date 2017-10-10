//exapple 2.4 
clc; funcprot(0);
// Initialization of Variables
pi = %pi;
M=28.05/1000;
gamm=1.23;
R=8.314;
atm=101.3*1000;
P1=3*atm;
//calculation
//part1
P2=P1*(2/(gamm+1))^(gamm/(gamm-1));
disp(P2/1000,"pressure at nozzle throat (kPa):")
//part2
temp=273+50;
nu1=R*temp/P1/M;
G=18;//mass flow rate
nu2=nu1*(P2/P1)^(-1/gamm);
A=G^2*nu2^2*(gamm-1)/(2*gamm*P1*nu1*(1-(P2/P1)^((gamm-1)/gamm)));
d=sqrt(4*sqrt(A)/pi);
disp(d*100,"diameter required at nozzle throat in (cm)")
//part3
vel=sqrt(2*gamm*P1*nu1/(gamm-1)*(1-(P2/P1)^((gamm-1)/gamm)));
disp(vel,"sonic velocity at throat in(m/s):");