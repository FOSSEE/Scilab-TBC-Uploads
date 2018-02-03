clear
//

//variable declaration

PB=20.0       //Load at point B,KN
PC=10.0       //Load at point C,KN 
thetaA=60.0   //angleBAC
thetaD=30.0   //angleBDC

AC=3.0   //length,m
CD=3.0   //length,m

AB=(AC+CD)*cos(thetaA*%pi/180)
BD=(AC+CD)*cos(thetaD*%pi/180)
//mistake in book
//angleBCA=angleABC=theta

theta=(180.0-thetaA)/(2.0) 

//Taking moment about A, we get
RD=(PC*AC+PB*AC*cos(thetaA*%pi/180))/(AC+CD)

RA=PC+PB-RD
//Joint A
//vertical & horizontal forces sum to zero

FAB=RA/sin(thetaA*%pi/180)

printf("\n FAB= %0.2f KN  [Comp.]",FAB)
FAC=FAB*cos(thetaA*%pi/180)
printf("\n FAC= %0.2f KN  [Tensile]",FAC)

//Joint D
//vertical & horizontal forces sum to zero

FDB=RD/sin(thetaD*%pi/180)

printf("\n FDB= %0.2f KN  [Comp.]",FDB)
FDC=FDB*cos(thetaD*%pi/180)
printf("\n FDC= %0.2f KN [Tensile]",FDC)

//Joint C
//vertical & horizontal forces sum to zero

FCB=PC/sin(theta*%pi/180)

printf("\n FCB= %0.2f KN  ",FCB)

//CHECK

FCB=(FDC-FAC)/cos(theta*%pi/180)
printf("\n FCB= %0.2f KN  Checked",FCB)
