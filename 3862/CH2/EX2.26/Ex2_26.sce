clear
//

//variable declaration

PB=20.0                       //vertical loadng at point B,KN 
PC=30.0                       //vertical loadng at point C,KN 
   
thetaab=30.0 *%pi/180.0
thetabc=50.0*%pi/180.0

//applying lami's thereom

T1=PB*sin(thetabc)/sin(%pi-thetabc+thetaab)
T2=PB*sin(%pi-thetaab)/sin(%pi-thetabc+thetaab)
theta=atan((T2*sin(thetabc))/(PC-T2*cos(thetabc)))*180/%pi 


printf("\n T1= %0.2f  KN",T1)

printf("\n T2= %0.2f  KN",T2)

//Writing equations of equilibrium for the system of forces at C 

printf("\n theta= %0.2f  °",theta)

T3=(PC-T2*cos(thetabc))/cos(theta*%pi/180)
printf("\n T3= %0.2f  KN",T3)
