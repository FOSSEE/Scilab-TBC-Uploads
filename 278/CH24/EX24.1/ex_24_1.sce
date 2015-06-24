//find..
clc
//solution
//given
W=4000//N
r2=50//mm
r1=100//mm
//let pmax be max pressure
//C2=pmax*r2=50pmax
//W=2*%pi*C(r1-r2)=16710*pmax
pmax=W/15170//N/mm^2
printf("max pressure is,%f N/mm^2\n",pmax)
//let pmin be min pressure
//C1=r1*pmin=100*pmin
//W=2*%pi*C(r1-r2)=31420*pmin
pmin=W/31420//N/mm^2
printf("min pressure is,%f N/mm^2\n",pmin)
pav=W/(%pi*(r1^2-r2^2))//N/mm^2)
printf("avrage pressure is,%f N/mm^2\n",pav)