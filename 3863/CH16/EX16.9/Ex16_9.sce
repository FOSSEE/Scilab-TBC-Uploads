clear
//
//
//Given
//Variable declaration
P=300*1000      //Power in W
N=100           //Speed in r.p.m
tau=80          //Maximum shear stress in N/sq.mm

//Calculation
//case(a):
T=(P*60)/(2*%pi*N)*1e3                              //Torque transmitted in Nmm
D=(((16*T)/(%pi*tau))**(1/3))                //Diameter of solid shaft in mm

//case(b):
Do=(((T*16)/(%pi*tau*(1-0.6**4)))**(1/3))    //External diameter of hollow shaft in mm

Di=0.6*Do                                               //Internal diameter of hollow shaft in mm
Per=(D**2-(Do**2-Di**2))/(D**2)*100                     //Percentage saving in weight

//Result
printf("\n Diameter of solid shaft = %0.3f  mm",D)
printf("\n Percentage saving in weight = %.2f%%",Per)

