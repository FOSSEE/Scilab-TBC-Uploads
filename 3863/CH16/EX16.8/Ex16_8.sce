clear
//
//Given
//Variable declaration
D=15*10        //Diameter of shaft in mm
P=150*1e3      //Power transmitted in W
N=180          //Speed of shaft in r.p.m

//Calculation
T=(P*60)/(2*%pi*N)*1e3        //Torque transmitted in Nmm
tau=int((16*T)/(%pi*D**3))    //Maximum shear stress in N/sq.mm

//Result
printf("\n Maximum shear stress = %0.3f  N/mm^2",tau)
