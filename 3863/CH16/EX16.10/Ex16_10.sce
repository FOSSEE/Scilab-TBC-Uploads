clear
//
//Given
//Variable declaration
P=75e3      //Power transmitted in W
N=200       //R.P.M of the shaft
tau=70      //Shear stress in N/sq.mm

//Calculation
T=P*60/(%pi*2*N)*1e3                        //Mean Torque transmitted in Nmm
Tmax=1.3*T                                      //Maximum Torque transmitted in Nmm
D=((16*Tmax/(%pi*tau))**(1/3))       //Suitable diameter of the shaft in mm


//Result
printf("\n Diameter of the shaft = %d mm",D)

