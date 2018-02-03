clear
//

//variable declaration
//The two 40 kN forces acting on the smooth pulley may be replaced by a pair of 40 kN forces acting at centre of pulley C and parallel to the given forces, since the sum of moments of the two given forces about C is zero

PA=20.0       //inclined at 45° loading at A,KN
PB=30.0       //inclined at 60° loading at B,KN

PC1=40.0       //inclined at 30° loading at C,KN
PC2=40.0       //inclined at 20° loading at C,KN
PD=50.0        //inclined at 30.0 at distance 2m form A,KN
PE=20.0        //inclined at alpha at distance xm form A,KN
P=20.0         //vertical loading at distance 4m,KN



thetaA=45.0*%pi/180.0
thetaB=60.0*%pi/180.0
thetaC1=30.0*%pi/180.0
thetaC2=20.0*%pi/180.0
thetaD=30.0*%pi/180.0
AD=2.0
AC=3.0
AB=6.0

//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Fx=PA*cos(thetaA)-PB*cos(thetaB)-PD*cos(thetaD)-PC1*sin(thetaC1)+PC2*cos(thetaC2)

Fy=-PA*sin(thetaA)-P+P-PB*sin(thetaB)-PD*sin(thetaD)-PC2*sin(thetaC2)-PC1*cos(thetaC1)


R=sqrt((Fx**2)+(Fy**2))
printf("\n R= %0.2f  KN",R)

alpha=atan(Fy/Fx)*180/%pi 
printf("\n alpha= %0.2f  °",alpha)

//Let the resultant intersect AB at  a distance x from A. Then, 


X=(-P*4+P*4+PB*sin(thetaB)*AB+PD*sin(thetaD)*AD-PD*cos(thetaD)*AD+PC2*AC*cos(thetaC2)-PC1*AC*sin(thetaC1))/R

printf("\n x= %0.2f  m",X)

printf("\n The equilibriant is equal and opposite to the resultant in which E = 116.515 kN, alpha= 76.82° and  x= %0.2f m",X)
