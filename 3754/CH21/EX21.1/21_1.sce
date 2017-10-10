clear//

//Variables

RL = 100.0                                   //Resistance (in ohm)
Vm = 300.0                                   //Maximum voltage (in volts) 
P1 = 25.0                                    //Load power1 (in watt)
P2 = 80.0                                    //Load power2 (in watt)

//Calculation 

Vdc = Vm / (2 * %pi)                     //dc voltage (in volts)
//When power is 25 watt
cosinealpha = (P1 * RL / Vdc**2)**0.5 -1     //cos of alpha       
alpha = acos(cosinealpha)               //Value of alpha (in radians)

//When power is 80 watt
cosinealpha1 = (P2 * RL / Vdc**2)**0.5 -1    //cos of alpha       
alpha1 = acos(cosinealpha1)             //Value of alpha (in radians)
//Result

printf("\n Angular firing control when load power P = 25 W is  %0.2f  degree.\nAngular firing control when load power P = 80 W is  %0.2f  degree.",alpha*180.0/%pi,alpha1*180.0/%pi)
