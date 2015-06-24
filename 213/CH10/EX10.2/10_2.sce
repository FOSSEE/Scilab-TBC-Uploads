//To find weight and coefficient of friction
clc
//Given:
P1=1500,P2=1720 //N
alpha1=12,alpha2=15 //degrees
//Solution:
//Refer Fig. 10.10
//Effort applied parallel to the plane, P1=W*(sind(alpha1)+mu*cosd(alpha1)), or P1/W-mu*cosd(alpha1)=sind(alpha1)    .....(i)
//Effort applied parallel to the plane, P2=W*(sind(alpha2)+mu*cosd(alpha2)), or P2/W-mu*cosd(alpha2)=sind(alpha2)    .....(ii)
A=[P1 -cosd(alpha1); P2 -cosd(alpha2)]
B=[sind(alpha1); sind(alpha2)]
V=A \ B
W=1/V(1)
mu=V(2)
//Results:
printf("\n\n Coefficient of friction, mu = %.3f.\n",mu)
printf(" Weight of the body, W = %d N.\n\n",W)