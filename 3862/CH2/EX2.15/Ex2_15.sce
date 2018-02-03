clear
//

//variable declaration
P1=500.0         //Loading at inclined to 60.0°,N
P2=1000.0          //vertical loading at 150 distance from O,N
P3=1200.0          //vertical loading at 150 distance from O,N
H=700.0           //Horizontal loading at 300 ditance from O,N
a=150.0
theta=60.0*%pi/180
//assume Resulat R at distance x from O,
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Rx=P1*cos(theta)-H
Ry=-P3-P2-P1*sin(theta)

R=sqrt((Rx**2)+(Ry**2))
printf("\n R= %0.2f KN in y-direction",R)

alpha=atan(Ry/Rx)*180/%pi 
printf("\n alpha %0.2f  °",alpha)
 
//Let the point of application of the resultant be at a distance x from the point O along the horizontal arm. Then, 

x=(P1*sin(theta)*(2*a)+P2*a-P3*a*cos(theta)+H*a*2*sin(theta))/(-Ry)
printf("\n x= %0.3f  mm",x)
