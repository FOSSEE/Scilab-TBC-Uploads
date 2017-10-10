//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-8.1
clc;

//Variable Initialization
C_lambda = 0.1*%pi       //Circumference (lambda)
R_m = 1.6               //Mutual resistance of two loops (ohm)
theta1 = 90*%pi/180             //Angle of radiation (radians)
theta2 = 2*%pi/10             //Angle of radiation (radians)

//Calculation
Rr = 197*(C_lambda)**4      //Self resistance of loop (ohm)
D1 = (1.5)*(sin(theta1))**2 //Directivity of loop alone (unitless)
D1_db = 10*log10(D1)        //Directivity of loop alone (dBi)
D2 = 1.5*(2*sqrt(Rr/(Rr-R_m))*sin(theta2))**2                        //Directivity of loop with ground plane (unitless)
D2_db = 10*log10(D2)    //Directivity of loop with ground plane (dBi)

//Result
mprintf("The directivity of loop alone is %.2f or %.2f dBi",D1,D1_db)
mprintf("\nThe directivity of loop with ground plane is %.2f or %.0f dBi",D2,D2_db)
