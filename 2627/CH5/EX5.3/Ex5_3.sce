//Ex 5.3
clc;clear;close;
format('v',5);
N1=1000;//no. of turns in primary
N2=200;//no. of turns in secondary
I0=3;//A
pf0=0.2;//lagging power factor
I2=280;//A(2ndary current)
pf2=0.8;//lagging power factor
I2dash=I2*N2/N1;//A
cosfi0=pf0;cosfi2=pf2;sinfi0=sqrt(1-cosfi0^2);sinfi2=sqrt(1-cosfi2^2);
I1_cosfi1=I2dash*cosfi2+I0*cosfi0;//A
I1_sinfi1=I2dash*sinfi2+I0*sinfi0;//A
I1=sqrt(I1_cosfi1^2+I1_sinfi1^2);//A
disp(I1,"Primary current(A)");
fi1=atand(I1_sinfi1/I1_cosfi1);//degree
pf1=cosd(fi1);//lagging
disp(pf1,"Primary power factor(lagging)");
