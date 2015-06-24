//example 11.1
clc; funcprot(0);
//parta
phi=30;
pa=2000;
q=100*50/1000;
Nq=55;
Ap=16*16/16/12;
Qp=Ap*q*Nq;
qp=0.4*pa*Nq*tan(phi*%pi/180)*Ap;
disp(qp,"ultimate load in lb");
disp(qp/1000,"ultimate load in kip");
disp("there is change in answer because of calculation mistake in the book");
//partb
Nsigma=36;
Ap=16*16/12/12;
q=110*50/1000;
Qp=Ap*q*Nsigma*((1+2*(1-sin(phi*%pi/180)))/3);
disp(Qp,"ultimate load in kip");
//partc
Nq=18.4;
Qp=Ap*q*Nq;
disp(Qp,"ultimate load in kip");

