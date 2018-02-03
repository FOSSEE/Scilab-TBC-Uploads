clear
//
//Given
//Variable declaration
D=150                  //Diameter of the shaft in mm
tau=45                 //Maximum shear stress in N/sq.mm

//Calculation
T=int(%pi/16*tau*D**3)*1e-3  //Maximum torque transmitted by the shaft in N-m

//Result
printf("\n Maximum torque = %0.3f  N-m",T)
