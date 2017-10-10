
clc
//Given
OC=6//in
CP=24//in
N=240//rpm
X=45//degrees
XP=19//in
XC=6//in
YP=32//in
YC=9//in
//Scalling off lenghts from fig , we have
CI=2.77//in
PI=2.33//in
XI=2.33//in
YI=3.48//in
//Solution
Vc=((%pi*N)/30)*(OC/12)//changing OP into feets
printf("\nw=%.2f ft/s\n",Vc)
//w=Vc/CI=Vp/PI=Vx/XI=Vy/YI
w=Vc/CI
Vp=w*PI
Vx=w*XI
Vy=w*YI
printf("velocity of points P, X and Y \n are %.2f ft/s, %.2f ft/s and %.1f ft/s respectively",Vp,Vx,Vy)
