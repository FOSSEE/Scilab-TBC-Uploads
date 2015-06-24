clear;
//clc();
f=50;
s=60;
j=9000;
p=2;
bs=50;
n=120*f/p;
ke=0.5*j*(2*(%pi)*n/60)^2;
printf("The kinetic energy at rated speed is:%.0f MJ\n",ke/1000000);

//to calculate inertia constants M and H

H=ke/s;
printf("the inertia constants H is:%.3f MJ/MVA\n",H/1000000);

M=ke/(180*f*1000000);
printf("the inertia constants M is:%.3f MJs/elec.deg\n",M);

//the inertia constants

iner_const=M/bs;
printf("The inertia constant is:%.6f pu",iner_const);
