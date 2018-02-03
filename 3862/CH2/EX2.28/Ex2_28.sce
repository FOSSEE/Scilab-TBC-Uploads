clear
//

//variable declaration
W=600.0                      //weight of cyclinder,N
r=150.0                      //radius of cylinder,mm
a=600.0                      //mm
b=300.0                      //mm

//Free body diagram of sphere and frame

////sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

RB=600.0                     
//As the frame is in equilibrium under the action of three forces only, they must be concurrent forces. In other words, reaction at D has line of action alone OD. Hence, its inclination to horizontal is given by: 
printf("\n RB= %0.2f  N",RB)
alpha=atan((a-r)/r)
printf("\n alpha= %0.4f  °",alpha)

RD=W/sin(alpha)
printf("\n RD= %0.3f  N",RD)

RC=RD*cos(alpha)
RA=RC
printf("\n RC= %0.0f  N",RC)
printf("\n RA= %0.0f  N",RA)
