clear
//

//variable declaration

//summation of all  horizontal forces is zero & vertical forces is zero.
P1=(60)                                     //inclined down to right Load at angle 60 at 1m from A,KN
P2=(80)                                     //Inclined down to left Load at angle 75° at 3m from A,KN
P3=(50)                                     //Inclined down to left Load at angle 60° at 5.5m from A,KN
theta1=60                                    
theta2=75
theta3=60
thetaRb=60
//horizontal,vertical component at A is Ha,Va  respectively.

Rb=(P1*1*sin(theta1*%pi/180)+P2*3*sin(theta2*%pi/180)+P3*5.5*sin(theta3*%pi/180))/(6*sin(thetaRb*%pi/180))         //reaction at B point,KN
Ha=-P1*cos(theta1*%pi/180)+P2*cos(theta2*%pi/180)-P3*cos(theta3*%pi/180)+Rb*cos(thetaRb*%pi/180)
printf("\n RB= %0.4f  KN",Rb)

//now vertical component
Va=P1*sin(theta1*%pi/180)+P2*sin(theta2*%pi/180)+P3*sin(theta3*%pi/180)-Rb*sin(thetaRb*%pi/180)

Ra=sqrt((Ha**2)+(Va**2))

printf("\n RA= %0.4f  KN",Ra)

alpha=(atan(Va/Ha))*180/%pi 

printf("\n alpha= %0.2f  °",alpha)
