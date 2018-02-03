clear
//

//variable declaration

//summation of all  horizontal forces is zero & vertical forces is zero.
P1=(20)                                     //vertical down  Load  at 2m from A,KN
P2=(30)                                     //uniform distributed load from 2m to 6m from A,KN/m(in 4m of span)
P3=(60)                                     //Inclined down to right Load at angle 45° at 7m from A,KN

theta3=45
//horizontal,vertical component at  B is  Hb,Vb respectively.

Ra=(P1*7+P2*4*5+P3*2*sin(theta3*%pi/180))/(9)     //reaction at B point,KN

printf("\n RA= %0.4f  KN",Ra)

Hb=P3*cos(theta3*%pi/180)
printf("\n HB= %0.4f  KN",Hb)
//now vertical component
Vb=P1+P2*4+P3*sin(theta3*%pi/180)-Ra
printf("\n VB= %0.4f  KN",Vb)

Rb=sqrt((Hb**2)+(Vb**2))

printf("\n RB= %0.4f  KN",Rb)

alpha=(atan(Vb/Hb))*180/%pi 

printf("\n alpha= %0.2f  °",alpha)
