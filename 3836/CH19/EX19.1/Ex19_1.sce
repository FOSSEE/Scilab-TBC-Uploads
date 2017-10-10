clear
//Introduction
i=0.2                 //current in amp
C=0.01                //Capacitance in farad
t=20*10**-3           //time in sec

//Calculation
dv=i/C                //change in voltage w.r.t time
v=dv*t                //peak ripple voltage

//Result
printf("\n Peak Ripple Voltage = %.1f V",v)

