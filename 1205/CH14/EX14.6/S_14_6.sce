clc;
W=3000;//N, force applied at G
delmt=120;//kg/s, rate of falling grains
vA=10;//m/s, velocity with which grains hits chute at A
vB=7.5;//m/s, velocity with which grains hits chute at B
theta=10;//degree,angle with which grains falls
theta=theta*%pi/180;//rad
//System formed by the momentum and impulses is equipollent to the momentum del_m*vB

//putting above values in equations we get

B=(3.5*W+1.5*delmt*vA+3*delmt*vB*cos(theta)-6*delmt*vB*sin(theta))/6;//N, reaction at roller support B
Cx=delmt*vB*cos(theta);//N, x component of reaction at hinge C
Cy=W-B+delmt*(vA-vB*sin(theta));//N, x component of reaction at hinge C

printf("Reaction at roller support B is B= %.0f N \n x component of reaction at hinge C is Cx= %.0f N\n  y component of reaction at hinge C Cy=%.0f N\n",B,Cx,Cy);

//Actual solving also shows similar answer as programme shows, book shows rounded value
