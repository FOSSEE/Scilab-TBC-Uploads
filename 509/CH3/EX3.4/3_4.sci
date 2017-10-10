// Chapter 3 Example 4//
clc
clear
//base powers of generators be m1,m2,m3 and base voltages be v1,v2,v3,secondary voltage=v//
v=132;
m1=100;// in MVA//
v1=11; // in kV//
m2=150;
v2=16;
m3=200;
v3=21;
//reactance of generator 1,2,3 are x1,x2,x3 respectively and X1,X2,X3 are the new reactances//
x1=0.25// in p.u//
x2=0.1;
x3=0.15;
X1=x1;
X2=x2*(m1/m2)*(v2/v1)^2;
X3=x3*(m1/m3)*(v3/v1)^2;
printf("\n Reactance of generator 1 = %.2f pu\n",X1);
printf("\n Reactance of generator 2 on the new base of generator1 = %.3f pu\n",X2);
printf("\n Reactance of generator 3 on the new base of generator1 = %.3f pu\n",X3);
// let T1,T2,T3 are the new per unit reactances on new base values and t1,t2,t3 are the old values//
t1=0.05;// in p.u//
t2=0.10;
t3=0.05;
// let the ratings of the tranformers be v1,v2,v3//
tv1=150;// in MVA//
tv2=200;
tv3=250;
T1=t1*(m1/tv1)*(v1/v1)^2;
T2=t2*(m1/tv2)*(v2/v1)^2;
T3=t3*(m1/tv3)*(v3/v1)^2;
printf("\n Per unit reactance of transformer 1 = %.3f pu\n",T1);
printf("\n Per unit reactance of transformer 2 = %.3f pu\n",T2);
printf("\n Per unit reactance of transformer 3 = %.3f pu\n",T3);
// line reactances for 1,2,3 are r1,r2,r3 respectively,base impedence=zb//
r1=100;// in ohms//
r2=50;
r3=80;
zb=(v)^2/(m1);
printf("\n The base impedence Zb = %.2f ohm\n",zb);
// per unit reactances of lines 1,2,3 are pu1,pu2,pu3 respectively//
pu1=r1/zb;
pu2=r2/zb;
pu3=r3/zb;
printf("\n Per unit reactance of line 1 = %.3f pu\n",pu1);
printf("\n Per unit reactance of line 2 = %.3f pu\n",pu2);
printf("\n Per unit reactance of line 3 = %.3f pu\n",pu3);






