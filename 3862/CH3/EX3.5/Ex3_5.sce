clear
//

//All inclined members have the same inclination to horizontal. Now, length of an inclined member is BF

//variable declaration

PE=20.0
AF=3.0
FE=3.0
AB=4.0
FD=4.0
BD=3.0
CD=4.0

BF=sqrt((AF**2)+(AB**2))
DE=BF
BC=DE

//sin(theta)=AB/BF
//cos(theta)=AF/BF

theta=asin(AB/BF)
//As soon as a joint is analysed the forces on the joint are marked on members 

//Joint E
//Consider the equilibrium of the entire frame,Sum of moments about A is zero,Horizontal forces & Vertical forces is zero.

FED=PE/sin(theta)
printf("\n FED= %0.0f KN (Tension)",FED)

FEF=FED*cos(theta)
printf("\n FEF= %0.0f KN (Comp.)",FEF)

//At this stage as no other joint is having only two unknowns, no further progress is possible. Let us find the reactions at the supports considering the whole structure. Let the reaction be RC HORIZONTAL at point C,VA,HA at point A Vertically & Horizontally respectively.
//Taking moment at point A,

RC=PE*6/8 
//sum of vertical & sun of horizontal forces is zero.

VA=PE
HA=RC

//Joint A
//sum of vertical & sun of horizontal forces is zero.
FAB=VA
printf("\n FAB= %0.0f KN (Comp.)",FAB)

FAF=HA
printf("\n FAF= %0.0f KN (Comp.)",FAF)

//Joint C
//sum of vertical & sun of horizontal forces is zero.
FCB=RC/cos(theta)
printf("\n FCB= %0.0f KN (Comp.)",FCB)

FCD=FCB*sin(theta)
printf("\n FCD= %0.0f KN (Tension)",FCD)

//Joint B
//sum of vertical & sun of horizontal forces is zero.

FBF=(FCB*sin(theta)-FAB)/sin(theta)

printf("\n FBF= %e ",FBF)

FBD=FCB*cos(theta)
printf("\n FBD= %0.0f KN (Tension)",FBD)

//joint F
//sum of vertical & sun of horizontal forces is zero.

FFD=FBF
printf("\n FFD= %e  ",FFD)
