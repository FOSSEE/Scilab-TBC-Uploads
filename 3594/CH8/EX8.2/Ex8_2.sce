clc
//given

OH=15//in
l=OH
u=0.3
P=100//lb
phi=atan(u)
dia=12 //in
r=dia/2;
//according to fig 170(b)
//for clockwise rotation
a=6//from figure
x=r*sin(phi)//in inches;radius of friction circle
Tb=P*l*x/a//braking torque on the drum
//for counter clockwise rotation
a1=5.5//in
Tb1=P*l*x/a1//braking torque on the drum
//according to figure 172(a)
//for clockwise rotation
a2=6.48//from figure
x=r*sin(phi)//in inches;radius of friction circle
Tb2=P*l*x/a2//braking torque on the drum
//for counter clockwise rotation
a3=6.38//in
Tb3=P*l*x/a3//braking torque on the drum
T1=ceil(Tb1)
T2=ceil(Tb2)
T3=ceil(Tb3)
printf("\nbraking torque on drum\nWhen dimensions are measured from fig 170(b)\nFor clockwise rotation= %.f lb in\nFor counter clockwise rotation= %.f lb in\nWhen dimensions are measured from fig 171(a)\nFor clockwise rotation= %.f lb in\nFor counter clockwise rotation= %.f lb in",Tb,T1,T2,T3)