//Example6, Chapter 3
clc;
f=50
Irms=20
//(i)
Im=Irms*sqrt(2)
i=10*sqrt(2)
ans=asin(i/Im)
ans=ans*180/%pi
t= ans/(2*180*f)
printf("\n t=%.0f ms \n",t*10^3)
//(ii)
t=(1/(4*f))+t
printf("\n t=%.2f ms \n",t)
