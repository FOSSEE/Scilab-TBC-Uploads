clear
//

//variable declaration

//Determine the inclinations of all inclined members

theta=atan(1)*180/%pi 

printf("\n theta= %0.2f  °",theta)

//Now at joints C, there are only two unknowns,forces in members CB and CD, say FCB and FCD.
//Now there are two equations of equilibrium for the forces meeting at the joint and two unknown forces. Hence, the unknown forces can be determined. At joint C  sum V= 0 condition shows that the force FCB should act away from the joint C so that its vertical component balances the vertical downward load at C.
 
P=40.0
FCB=P/sin(theta*%pi/180)

printf("\n FCB= %0.2f  KN",FCB)

//Now sum H=0 indicates that FCD should act towards C.

FCD=FCB*cos(theta*%pi/180)

printf("\n FCD= %0.2f  KN",FCD)

//In the present case, near the joint C, the arrows are marked on the members CB and CD to indicate forces FCB and FCD directions as found in the analysis of joint C. Then reversed directions are marked in the members CB and CD near joints B and D, respectively.

FDB=40.0
FDE=40.0

printf("\n FDB= %0.2f  KN",FDB)

printf("\n FDE= %0.2f  KN",FDE)

//In the present case, after marking the forces in the members DB and DE, we find that analysis of joint B can be taken up.

FBE=(FCB*sin(theta*%pi/180)+P)/(sin(theta*%pi/180))

FBA=FCB*cos(theta*%pi/180)+FBE*cos(theta*%pi/180)

printf("\n FBE= %0.2f  KN",FBE)
printf("\n FBA= %0.2f  KN",FBA)
//Determine the nature of forces in each member and tabulate the results. Note that if the arrow marks on a member are towards each other, then the member is in tension and if the arrow marks are away from each other, the member is in compression.

