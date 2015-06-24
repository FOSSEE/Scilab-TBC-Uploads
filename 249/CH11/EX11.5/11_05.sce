clear
clc
k=0.5;//litre/mol.min
CAo=2;//mol/litre
//From the batch eqn
//CA/CAo=1/(1+kCAo*t)
to=1;t1=3;
E=0.5;
//Using eqn 13
XA_avg=1-(E*integrate('1/(1+t)','t',to,t1));
printf("\n Average concentration of A remaining in the droplet is %f",XA_avg)
