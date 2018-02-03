clear
//

//variable declaration

PB=20.0                   //vertical loadng at point B,KN 
 
PC=25.0                    //vertical loadng at point C,KN 

thetaab=30.0*%pi/180.0
thetadc=60.0*%pi/180.0

//Writing equations of equilibrium for the system of forces at joints B and C 
//T1*sin(thetaab)=T3*sin(thetadc)

T3=(PB+PC)/((sin(thetadc)*cos(thetaab)/sin(thetaab))+cos(thetadc))
printf("\n T3= %0.2f  KN",T3)

T1=T3*sin(thetadc)/sin(thetaab)
printf("\n T1= %0.2f  KN",T1)

theta=(atan((T3*sin(thetadc))/(PC-T3*cos(thetadc))))*180/%pi 
printf("\n theta= %0.2f  °",theta)

T2=T3*sin(thetadc)/(sin(theta*%pi/180))
printf("\n T2= %0.2f  KN",T2)
