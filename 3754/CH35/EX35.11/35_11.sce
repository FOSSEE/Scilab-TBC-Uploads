clear//

//Variables

ACL = 1.0                          //Closed loop gain
Acm = 0.001                        //Common mode gain      
Slew_rate = 0.5 * 10**6            //Slew rate (in Volt per second)

//Calculation

CMRR = ACL / Acm                   //Common-mode rejection ratio       
vin = 1.0                          //Voltage (in volts)
Vout = ACL * vin                   //Output voltage (in volts)
Vpk = 3.0                          //Peak-to-peak voltage (in volts)    
fmax = Slew_rate/(2*%pi*Vpk)   //Maximum frequency (in Hertz)

//Result

printf("\n ACL is  %0.3f .\nCMRR is  %0.3f .\nfmax is  %0.1f  kHz.",ACL,CMRR,fmax*10**-3)
