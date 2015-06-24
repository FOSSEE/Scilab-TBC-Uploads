clear;
//clc();
vs=132;
vr=vs;
A=0.97;
alpha=0.6;
B=60;
z=B;
bet=70;
C=0.001;
del=91;

prm=vs*vr/B -A*vr^2*cosd(bet-alpha)/B;
printf("the steady state stability limit is:%.2f MW\n",prm);

//shunt admittance neglected

y=0;
A1=1 +z*y/2;
alpha1=0;
D=A;
C=y*(1 +z*y/2);

prm=vs*vr/B -A1*vr^2*cosd(bet-alpha1)/B;
printf("the steady state stability limit is:%.2f MW\n",prm);


//both shunt admittance and series resistance is neglected

B1=B*sind(bet);
bet1=90;

prm=vs*vr/B1 -A1*vr^2*cosd(bet1-alpha1)/B1;
printf("the steady state stability limit is:%.2f MW\n",prm);

