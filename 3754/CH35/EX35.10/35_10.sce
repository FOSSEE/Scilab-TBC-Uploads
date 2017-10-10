clear//

//Variables

R2 = 100.0 * 10**3                 //Resistance (in ohm)
R1 = 10.0 * 10**3                  //Resistance (in ohm)  
Slew_rate = 0.5 * 10**6            //Slew rate (in volt per second)   
Vpk = 5.5                          //Peak voltage (in volts)
RL = 10.0 * 10**3                  //Load resistance (in ohm)  
ACM = 0.001                        //Common mode gain 

//Calculation

ACL = (1 + R2/R1)                  //Closed loop voltage gain     
CMRR = ACL / ACM                   //Common-mode rejection ratio       
vin = 1.0                          //Voltage (in volts)
Vout = ACL * vin                   //Output voltage (in volts)
Vpk = 5.5                          //Peak-to-peak voltage (in volts)    
fmax = Slew_rate/(2*%pi*Vpk)   //Maximum frequency (in Hertz)

//Result

printf("\n Closed loop gain is  %0.3f .\nCMRR is  %0.3f .\nMaximum operating frequency is  %0.2f  kHz.",ACL,CMRR,fmax*10**-3)
