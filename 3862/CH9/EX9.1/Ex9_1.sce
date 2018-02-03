clear
//

//variable declaration

//summation of all  horizontal forces is zero & vertical forces is zero.
P1=(10)                                     //Vertical down Load at 4m from A,KN
P2=(15)                                     //Inclined down Load at angle 30° at 6m from A,KN
P3=(20)                                     //Inclined down Load at angle 45° at 10m from A,KN
theta2=30
theta3=45
//horizontal,vertical component at A  is Ha,Va respectively.

Ha=P2*cos(theta2*%pi/180)+P3*cos(theta3*%pi/180)
Rb=(P1*4+P2*6*sin(theta2*%pi/180)+P3*10*sin(theta3*%pi/180))/12         //reaction at B point,KN

printf("\n RB= %0.4f  KN",Rb)

//now vertical component
Va=P2*sin(theta2*%pi/180)+P3*sin(theta3*%pi/180)+P1-Rb

Ra=sqrt((Ha**2)+(Va**2))

printf("\n RA= %0.4f  KN",Ra)

alpha=(atan(Va/Ha))*180/%pi 

printf("\n alpha= %0.2f  °",alpha)
