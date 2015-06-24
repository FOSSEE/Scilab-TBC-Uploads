//find max value of torque
clc
//solution
//given
d=50//mm
M=2000*10^6//N-mm
fs=200//N/mm^2
//let T be torque 
pi=3.14
Z=(pi/32)*d^3//mm^3
//acc to max principal stress theory
f1=M/Z//N/mm^2//bending stress
//t=16*T/(pi*d^3)//shear stress due to torque/
//ft1=(f1/2)+(0.5*sqrt((f1^2)+4*t^2)//N/mm^2
//ft2=(ft1/2)-(0.5*sqrt((f1^2)+4*t^2)//N/mm^2
//Tmax=0.5*sqrt(f1^2 + 4*t^2)
//ft1=fs
//81.5+sqrt(6642.5+(1.65*10^-9*T^2))=200
//6642.5+(1.65*10^-9*T^2)=14042
//T^2=(14042-6642.5)/(1.65*10^-9)
T=sqrt((14042-6642.5)/(1.65*10^-9))//N-mm
//acc to max shear stress theory
//Ty=fs/2//max shear stress=0.5*yield stress
Ty=100//N/mm^2
//sqrt(6642.5+(1.65*10^-9*T1^2))=100
//T1^2=(10000-6642.5)/(1.65*10^-9)
T1=sqrt(2035*10^9)//N-mm
//acc to max distortion energy theory
//ft1^2+ft2^2-ft1*ft2=fs^2
//[81.5+sqrt(6642.5+1.65*10^-9*T1^2)]^2+[81.5-sqrt(6642.5+1.65*10^-9*T1^2)]^2-[81.5+sqrt(6642.5+1.65*10^-9*T1^2)]^2*[81.5-sqrt(6642.5+1.65*10^-9*T1^2)]^2=200^2
//81.5^2+3*6642.5+3*1.65*10^-9*T1^2=200^2
//T1^2=(40000-26570)/(4.95*10^-9)
T1=sqrt((40000-26570)/(4.95*10^-9))//N-mm
printf("the torque acting acc to max shear theory is,%f N-mm\n",T)
printf("the torque acting acc to max distortion theoyr is,%f N-mm",T1)