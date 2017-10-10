clear//

//Variables

ACL = 150.0                  //Closed loop voltage gain
Vin = 200.0 * 10**-3         //Input a.c. voltage (in volts) 
V = 12.0                     //Voltage (in volts)       

//Calculation

Vout = ACL * Vin             //Output voltage (in volts)
Vpkplus = V -2.0             //maximum positive peak voltage (in volts)
Vpkneg = -V + 2.0            //maximum negative peagk voltage (in volts) 

//Result

printf("\n The maximum possible output value could be between  %0.3f  V and  %0.3f  V.",Vpkplus,Vpkneg)
