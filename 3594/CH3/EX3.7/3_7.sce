
clc
printf("\n")
//GIVEN
OC=8//inches
CP=4//inches
N=60//inches
ON=15//inches
RN=6//inches
X=120//degrees
OP=10.6
OQ=OP
//from fig 65(a)
Vq=1.56//ft/s
Vrn=0.74//ft/s
//from fig 65(b)
ftq=3.74//ft/s^2
ftrn=2.03//ft/s^2
w1=(%pi*N)/30
w=Vq/(OQ/12)
wrn=Vrn/(RN/12)
a=ftq/(OP/12)//Angular acceleration of ON
a1=ftrn/(RN/12)//angular acceleration of RN
printf("W=%.2f rad/s\nWrn=%.2f rad/s\n",w,wrn)
printf("Angular acceleration of ON= %.2f rad/s^2\nAngular acceleration of RN=%.2f rad/s^2\n",a,a1)

