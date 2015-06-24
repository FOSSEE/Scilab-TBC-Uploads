//example 12.1
clc; funcprot(0);
Ap=%pi/4*1.75^2;
FS=4;
Nq=37.75;
L=8;
Es=50000;
mus=0.265;
pu=100;
Db=1.75;
q=6*16.2+2*19.2;
phi=36*%pi/180;
Fqs=1+tan(phi);
Fqd=1+2*tan(phi)*(1-sin(phi))^2*atan(L/Db);
Ir=Es/(2*(1+mus)*q*tan(phi));
delta=0.005*(1-phi/20*180/%pi+25/20)*q/pu;
Irr=Ir/(1+Ir*delta);
Fqc=exp(-3.8*tan(phi)+(3.07*sin(phi)*log10(2*Irr))/(1+sin(phi)));
Qp=Ap*(q*(Nq-1)*Fqs*Fqd*Fqc);
Qpall=Qp/FS;
disp(Qpall,"allowed load in kN");
disp("due to rounding off error there is slight change in answer")


