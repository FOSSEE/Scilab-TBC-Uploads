clear
//

//Now, we cannot find a joint with only two unknown forces without finding reactions.
//Consider the equilibrium of the entire frame,Sum of moments about A is zero,Horizontal forces & Vertical forces is zero.

//variable declaration

PB=40.0
PC=50.0
PE=60.0

theta=60.0

RD=(PC*3+PE*2+PB*1)/(4.0)

RA=PB+PC+PE-RD

FAB=RA/sin(theta*%pi/180)

printf("\n FAB= %0.4f KN (Comp.)",FAB)

FAE=FAB*cos(theta*%pi/180)

printf("\n FAE= %0.4f KN (Tension)",FAE)

FDC=RD/sin(theta*%pi/180)

printf("\n FDC= %0.4f KN (Comp.) ",FDC)

FDE=FDC*cos(theta*%pi/180)

printf("\n FDE= %0.4f KN (Tension) ",FDE)

FBE=(FAB*sin(theta*%pi/180)-PB)/sin(theta*%pi/180)

FBC=(FAB+FBE)*(0.5)
printf("\n FBC= %0.4f KN (Comp.)",FBC)


FCE=(FDC*sin(theta*%pi/180)-PC)/(sin(theta*%pi/180))
printf("\n FCE= %0.4f KN (Tension)",FCE)
