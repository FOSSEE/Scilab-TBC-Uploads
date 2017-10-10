//Chapter 16, Example 16.5

clc
//Initialisation
dv=20                         //change in voltage w.r.t time
t=10*10**-3                    //time in sec

//Calculation
vc=t*dv                        //peak ripple voltage on capacitor

//Results
printf("Peak Ripple Voltage = %.1f V",vc)

