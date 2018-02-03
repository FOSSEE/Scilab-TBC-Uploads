clear
//

//The pulley C is in equilibrium under the action of tensile forces in CA and CB and vertical downward load 200 N. The tensile forces in segment CA and CB are the same since the pulley is frictionless. Now consider the equilibrium of pulley C 
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

//variable declaration
L=200.0      //suspended load at C,N
AB=3.0
BI=1.0
ACB=5.0  //Length of cord,m
DE=3.0
BE=4.0
theta=asin(4.0/5.0)
//assume T is tension in string making angle theta1 & theta2,solving horizontal we find theta1=theta2,lets called them theta ,as triangleCFD=triangle=CFA.so, CD=AC

HI=BI*DE/BE
AH=DE-HI
x=AH/2
printf("\n x= %0.3f  m",x)

T=L/(2*sin(theta))
printf("\n T= %0.0f  N",T)
