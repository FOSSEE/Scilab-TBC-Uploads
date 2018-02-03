clear
//

//variable declaration

PA=100.0                           //inclined up loading at 60° at A, N
PB1=80.0                           //Vertical down loading at B,N
PB2=80.0                           //Horizontal right loading at at B,N 
PC=120.0                           //inclined down loading at 30° at C,N

thetaA=60.0*%pi/180.0
thetaB=30.0*%pi/180.0



//Taking horizontal direction towards left as x axis and the vertical downward direction as y axis. 
////sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

Fx=PB2-PA*cos(thetaA)-PC*cos(thetaB)
Rx=-Fx

Fy=PB1+PC*sin(thetaB)-PA*sin(thetaA)
Ry=Fy


R=sqrt((Rx**2)+(Ry**2))
printf("\n R= %0.2f  KN",R)

alpha=atan(Fy/Fx)*180/%pi 
printf("\n alpha= %0.2f  °",(-alpha))

//Let x be the distance from A at which the resultant cuts AC. Then taking A as moment centre,

x=(PB1*100*sin(thetaA)+PB2*50+PC*sin(thetaB)*100)/Ry
printf("\n x= %0.3f  mm",x)
