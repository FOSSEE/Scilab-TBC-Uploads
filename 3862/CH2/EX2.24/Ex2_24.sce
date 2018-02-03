clear
//

//variable declaration
PB=200.0                       //Vertical loading at B,N
PD=250.0                       //Vertical loading at D,N
thetabc=30.0*%pi/180.0
thetabd=60.0*%pi/180.0
thetaed=45.0*%pi/180.0
//Free body diagrams of points B and D . Let the forces in the members be as shown in the figure. Applying Lami’s theorem to the system of forces at point D,

T1=PD*sin(%pi-thetabd)/sin(thetaed+(%pi/2)-thetabd)
T2=PD*sin(%pi-thetaed)/sin(thetaed+(%pi/2)-thetabd)

printf("\n T1= %0.2f  N",T1)
printf("\n T2= %0.2f  N",T2)

//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

T3=(PB+T2*cos(thetabd))/cos(thetabc)
printf("\n T3= %0.2f  N",T3)

T4=(T2*sin(thetabd))+T3*sin(thetabc)
printf("\n T4= %0.2f  N",T4)
