

//Variable declaration
Re =  1.5*10^3              //collector resistance(ohms)
Rc = Re
Rs = 600                       //source resistance(ohms)
Rl = 2*10^3                   //load resistance(ohms)  
beta = 100                     //common emitter current gain 
rpi = 1*10^3                  //dynamic junction resistance(ohms)
f = 50                         //frequency(Hz)

//Calculations
w = 2*f*(%pi)              //corner frequency(rad/s)
CE = 1/(w*(Rs+rpi))            //capacitance(uF)
Ce = CE*(beta+1)              //capacitance(uF)
w11 = w/10                     //corner frequency input circuit (rad/s)
w12 = w11/20                   //corner frequency output circuit(rad/s)
Cc1 = 1/(w11*(Rs+rpi))         //coupling capacitor 1(uF)  
Cc2 = 1/(w12*(Rc+Rl))          //coupling capacitor 2 (uF)  

//Results
printf ("Ce is %.f uF",Ce/1E-6)
printf ("Cc1 is %.1f uF",Cc1/1e-6)
printf ("Cc2 is %.2f uF",Cc2/1E-5)
