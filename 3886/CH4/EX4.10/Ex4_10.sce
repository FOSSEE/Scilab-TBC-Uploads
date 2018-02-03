//Finding unknown forces
//Refer fig. 4.8
//Let us assume joint E as origin,EC as x-axis,EA as y-direction
//accordingly the co-ordinates are
//A(0,3),B(3,3),C(6,0),D(3,0),E(0,0)
YD=-40  //kN
YC=-40  //kN
//Using co-ordinates lengths are found out to be
LAB=3  //m
LBC=3*sqrt(2)  //m
LCD=3  //m
LDE=3  //m
LBD=3  //m
LBE=3*sqrt(2)  //m
//Consider joint C
//applying equilibrium conditions
tCB=40/3
tCD=-40/3
FCB=tCB*LBC  //kN
FCD=-13.333*LCD  //kN
//Consider joint D
//applying equilibrium conditions
tDE=tCD
FDE=tCD*LCD  //kN
tDB=40/3
FDB=tDB*LBD
//Consider joint B
//applying equilibrium conditions
tBE=-(13.333+13.333)
FBE=tBE*LBE  //kN
tBA=40
FBA=tBA*LAB
printf("The required forces are:-\nForce in member AB=%.2d kN\nForce in member BC=%.2d kN\nForce in member CD=%.2d kN\nForce in member DE=%.2d kN\nForce in member EB=%.2d kN\nForce in member BD=%.2d kN",FBA,FCB,FCD,FDE,FBE,FDB)
