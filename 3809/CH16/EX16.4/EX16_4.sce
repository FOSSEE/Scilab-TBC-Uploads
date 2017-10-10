//Chapter 16, Example 16.4

clc
//Initialisation
i=0.2                          //current in ampere
c=0.01                         //capacitance in farad
t=20*10**-3                    //time in sec

//Calculation
dv=i/c                         //change in voltage w.r.t time
vc=t*dv                        //peak ripple voltage on capacitor

//Results
printf("Peak Ripple Voltage = %.1f V",vc)

