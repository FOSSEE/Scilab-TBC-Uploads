

//Variable declaration
rpi = 2                     //dynamic junction resistance(K ohms)  
beta = 50.                   //common emitter current gain 
f = 1                        //frequency(MHz)
beta1 = 2.5                  //common emitter current gain 
f1 = 20*10^6                //frequency(Hz)

//Calculations
fT = beta1*f1                  //short circuit current gain bandwidth product(Hz)
fbeta = fT/beta                //frequency at beta(Hz)
Cpi = 1/(2*(%pi)*fbeta*rpi)   //dynamic capacitance(pF)

//Results
printf ("fT is %.f MHz",fT/1e+6)
printf ("fB is %.f MHz",fbeta/1e+6)
printf ("Cpi is %.f pF",Cpi/1e-9)
