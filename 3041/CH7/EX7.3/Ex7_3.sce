

//Variable declaration
f=50*10**3.                  //OPAMP freequency(Hz)
Vm=0.02                      //maximum value of signal voltage(V)
S=.5*10**6                     //slew rate(V/s)

//Calculations
Kvf=S/(2*(%pi)*f*Vm)    //closed loop gain of amplifier

//Results
printf ("closed loop gain of amplifier is %.f",Kvf)
