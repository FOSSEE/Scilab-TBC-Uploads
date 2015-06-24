// find torque applied and tatal twist angle
clc
//solution
//given
L=3500//mm//total length
//l1+l2+l3=3500
do=100//mm
di=62.5//mm
d2=100//mm
d3=87.5//mm
t=47.5//N/mm^2//shear stress
C=82.5*10^3//N/mm^2
//refer fig 5.3
pi=3.14
J1=(pi/32)*[do^4-di^4]
J2=(pi/32)*[d2]^4
J3=(pi/32)*[d3]^4//mm^4
//we know q=(T*l)/(C*J)//twist angle
//q1=q2
//(T*l1)/(C*J1)=(T*l2)/(C*J2)
//therefore l1/l2=(J1/J2)=0.847
//q1=q3
//therefore (l1/l3)=(J1/J3)=1.447
//l1+l2+l3=L=3500
//l1+l1/0.847+l1/1.447=3500
//l1(1+(1/0.847)+(1/1.447))=3500
l1=3500/{1+(1/0.847)+(1/1.447)}
l2=l1/0.847
l3=l1/1.447
//T/J=t/r
T=(pi/16)*t*[(do^4-di^4)/do]//torque//N-mm
//q=q1+q2+q3//total angle of twist
q=(T/C)*[{l1/J1}+{l2/J2}+{l3/J3}]
printf("the torque applied is,%f N-mm\n",T)
printf("the total angle of twist is,%f radians",q)