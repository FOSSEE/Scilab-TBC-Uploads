//find out dimension of joint
clc
//solution
//given
D=250//mm
p=0.7//N/mm^2
//ref table 8.1,foa cast iron ft=14//N/mm^2
ft=14//N/mm^2
//table 8.2,C=9 mm//
C=9//mm
pi=3.14
t=(p*D)/(2*ft)+C//mm
d=0.75*t + 10//mm//nominal dia of bolts
n=0.0275*D+1.6//mm//numbr of bolts
tf=1.5*t+3//mm//thickness of flanges
B=2.3*d//mm//width of flange
Do=D+2*t+2*B//mm//outside dia of flange
Dp=D+2*t+2*d+12//mm
Pc=pi*Dp/n//mm
printf("the thickness of pipe is,%f mm\n",t)
printf("the nominal diameter of bolts is,%f mm\n",d)
printf("the number of bolts is,%f \n",n)
printf("the thickness of flanges is,%f mm\n",tf)
printf("the width of flange is,%f mm\n",B)
printf("the outside dia of flange is,%f mm\n",Do)
printf("the pitch circle diameter is,%f mm\n",Dp)
printf("the circumferencial pitch is,%f mm",Pc)