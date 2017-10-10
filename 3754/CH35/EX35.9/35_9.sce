clear//

//Variables

R2 = 100.0 * 10**3                 //Resistance (in ohm)
R1 = 10.0 * 10**3                  //Resistance (in ohm)  
ACM = 0.001                        //Common-mode gain 
Slew_rate = 0.5 * 10**6            //Slew rate (in volt per second)   
Vpk = 5.0                          //Peak voltage (in volts)

//Calculation

ACL = R2 / R1                       //Closed loop voltage gain
Zin = R1                            //Input impedance of the circuit (in ohm)
Zout = 80.0                         //Output impedance of the circuit (in ohm)
CMRR = ACL / ACM                    //Common mode rejection ratio    
fmax = Slew_rate / (2*%pi*Vpk)  //Maximum frequency (in Hertz)

//Result

printf("\n Closed-loop gain is  %0.3f .\nInput impedance is  %0.3f  kilo-ohm.\nOutput impedance is  %0.3f  ohm.\nCommon-mode rejection ratio is  %0.3f .\nMaximum operating frequency is  %0.1f  kHz.",ACL,Zin*10**-3,Zout,CMRR,fmax*10**-3)
