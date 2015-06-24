

//Variable declaration
Cc1 = 1*10^-6                 //coupling capacitor 1(uF)
Cc2 = 1*10^-6                 //coupling capacitor 2 (uF)  
Rs = 10^3                     //source resistance(k ohms)
rpi = 2*10^3                  //dynamic junction resistance(k ohms)
Rc = 4500                      //collector resistance(ohms)
Rl = 9*10^3                   //load resistance(k ohms)
w = 100                        //corner frequency(rad/s)

//Calculations
w11 = 1/(Cc1*(Rs+rpi))                    //corner frequency input circuit (rad/s)
w12 = 1/(Cc2*(Rc+Rl))                     //corner frequency output circuit(rad/s)
f = w11/(2*(%pi))                     //lower cutoff frequency(Hz)
Zin = complex((Rs+rpi),-(1/(w*Cc1)))      //input impedance(k ohms)   
Zout = complex(Rc,-(1/(w*Cc2)))           //output impedance(k ohms)   

//Results
printf ("lower cut-off freq is %.f Hz",f)
disp ("ohms", Zin ," Zin")
disp ("ohms" ,Zout,"Zout")
