clc;
//e.g 27.12
AV=1000;
f1=50;
f2=200*10**3;
D=0.05;
beta=0.01;
AV1=AV/(1+beta*AV);
disp(AV1);
fl1=f1/(1+beta*AV);
disp('HZ',fl1,"fl1=");
fu2=(1+beta*AV)*f2;
disp('MHZ',fu2*10**-6,"fu2=");
D1=D/(1+beta*AV);
disp('%',D1*100,"D1=");
