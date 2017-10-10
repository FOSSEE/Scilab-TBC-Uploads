
clc
//solution
//given
//ref fig 10.27
P=15*10^3//N
Tmax=120//N/mm^2
d=80//mm
//let s be size of weld
T=P*240//N-mm//torque
//t=(2.83*T)/(pi*s*80^2)=506.6/s
M=P*175//N-mm
//fb=(5.66*M)/(pi*s*80^2)=(738.8/s)//N/mm^2
//Tmax=0.5*(sqrt(fb^2+t^2))
//Tmax=627/s
s=627/Tmax//mm
printf("the sieze of weld is,%f mm",s)