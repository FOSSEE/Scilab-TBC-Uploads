//Chapter 17
//Example 17_11
//Page 414

clear;clc;

v=33;
pmva=10;
qmva=50;
xp=20;
xq=10;
rc=500;
base=50;

per_xg=base/pmva*xp;
per_xt=base/qmva*xq;
printf("%% reactance of each generator = %d %% \n", per_xg);
printf("%% reactance of transformer = %d %% \n", per_xt);

per_x=base*100/rc;
printf("Required %% reactance = %d %% \n", per_x);
x=100/15;
rr=x*10*v^2/base/1000;
printf("Reactance of reactor = %.3f ohms \n\n", rr);
