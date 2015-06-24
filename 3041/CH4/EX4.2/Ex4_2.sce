

//Variable declaration
C = 100*10^-6     //capacitance(uF)
Rg = 1.            //galvanometer resistance(k oms)
Rl = 4.            //load resistance(k ohms)

//Calculations
Rth = (Rg*Rl)/(Rg+Rl)      //thevinine's equivalent resistance
fc = 1/(2*(%pi)*C*Rth)  //critical frequency(Hz)
f = fc*C                    //lowest frequency(Hz)

//Results
printf ("lowest frequency at which the point A gets grounded is %.1f Hz",f/1E-2)
