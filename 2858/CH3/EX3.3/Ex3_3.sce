//example 3.3
clc; funcprot(0);
phi=25; //degrees
Es=620; //kN/m^2
Gamma=18;//kN/m^2
Df=0.6;
B=0.6;
L=1.2;
Fqc=0.347;
Nq=10.66;
Nc=20.72;
Ngamma=10.88;
mu=0.3;
Fyd=1;
c=48;//kN/m^2
q=Gamma*(Df+B/2);
Ir=Es/(2*(1+mu)*(c+q*tan(phi*%pi/180)));
disp(Ir,"value of Ir");
Fcc=Fqc-(1-Fqc)/(Nq*tan(phi*%pi/180));
Fcs=1+Nq/Nc*B/L;
Fqs=1+B/L*tan(phi*%pi/180);
Fys=1-0.4*B/L;
Fcd=1+0.4*Df/B;
Fqd=1+2*tan(phi*%pi/180)*(1-sin(phi*%pi/180))^2*Df/B;
q1=0.6*18;
Fyc=Fqc;
qu=c*Nc*Fcs*Fcd*Fcc+q1*Nq*Fqs*Fqd*Fqc+1/2*Gamma*Ngamma*Fys*Fyd*Fyc;
disp(qu,"ultimate bearing capacity in kN/m^2");

