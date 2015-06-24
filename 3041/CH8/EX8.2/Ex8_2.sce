 

//Variable declaration
t=1                               //time constant
e=1.8                             //e=R1/R2 min=1.8
e1=9.                              //e1=R1/R2 max=9

//Calculations
Betamin=1/(1+e)                 //current gain minimum
Betamax=1/(1+e1)                //current gain maximum
Tmax=2*t*log((1+Betamin)/(1-Betamin))          
Tmin=2*t*log((1+Betamax)/(1-Betamax))                 
fmin=1/Tmax                     //minimum freq(Hz)
fmax=1/Tmin                     //maximum freq(k Hz)

//Results
printf ("fmin is %.f Hz and fmax is %.1f KHz",fmin/1E-3,fmax)
