clc
E2=20;         //Assigning values to parameters
E1=1000;
kva=5;
I2=kva*1000/E2;
K=E2/E1;
R01=4.4
R02=K*K*R01;
X01=8.98
X02=K*K*X01;
pf=0.8
percentreg=(I2*R02*pf+I2*X02*sqrt(1-pf*pf))*100/E2;
disp(percentreg,"Percentage maximum regulation")
wi=90
I1=kva*1000/E1
Wcf=I1*I1*R01
kvam=kva*sqrt(wi/Wcf)
disp(kvam,"kva at maximum Efficency is")