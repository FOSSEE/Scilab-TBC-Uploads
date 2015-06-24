clc;
//e.g 27.11
Rin=4.2*10**3;
AV=220;
beta=0.01;
Ri=(1+beta*AV)*Rin;
disp('Kohm',Ri*10**-3,"Ri=");
F1=1.5*10**3;
FC1=F1/(1+beta*AV);
disp('HZ ',FC1,"FC1=");
F2=501.5*10**3;
FC2=(1+beta*AV)*F2;
disp('KHZ',FC2*10**-3,"FC2=");
