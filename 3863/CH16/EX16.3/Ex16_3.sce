clear
//

//Given
//Variable declaration
Do=200     //Outer diameter in mm
Di=100     //Inner diameter in mm
tau=40     //Maximum shear stress in N/sq.mm

//Calculation
T=int(((%pi)/16*tau*((Do**4-Di**4)/Do)))*1e-3 //Maximum torque transmitted by the shaft in Nm


//Result
printf("\n Maximum torque transmitted by the shaft = %0.3f  Nm",T)
