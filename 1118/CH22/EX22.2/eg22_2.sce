clear;
//clc();
v=110;
f=50;
l=150;
d=10*10^(-3);
irr_fac=0.85;
v_grad=30;
p=750;
t=30;
D=2.5;

r=d/2;
del=(0.392*p)/(273 + t);
e=v_grad*100*irr_fac*r*del*log([D/r])/sqrt(2);

en=v/sqrt(3);
pc=(244/del)*(f+25)*(en-e)^(2)*sqrt(r/D)*l/100000;

tot_loss=3*pc;
printf("The total corona loss is: %.2f kW",tot_loss);
//difference in answer is due to rounding off of pc
