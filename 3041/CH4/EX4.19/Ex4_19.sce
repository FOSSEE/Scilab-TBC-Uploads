

//Variable declaration
Vcc = 3.                     //supply voltage to collector(V)
Vee = -3.                    //supply voltage to emitter(V)
r1 = 40.                     //resistance(ohms) 
r2 = 25.                     //resistance(ohms)
r3 = 1.56                    //resistance(ohms)
Vs = 3.                      //source voltage(V)
beta = 200                  //common emitter current gain
r4 = 0.6                     //resistance(ohms)
r5 = 0.15                    //resistance(ohms)
Vbe = 0.7                    //base to emitter voltage
r = 0.5                      //resistance(k ohms)
fL = 20                      //frequency(Hz)
Req1 = 24.24                 //solving r||(Rth+rpi+R)||Re
f = 2                        //non dominant cutoff freq is fL/10 i.e 20/10

//Calculations
//Part a
Vth = Vs-(((Vcc-Vee)/(r1+r2))*r1)             //thevinine's voltage(V)
Rth = (r1*r2)/(r1+r2)                         //thevinine's voltage(V)
Ib = (Vth-Vbe+Vcc)/(Rth+((r4+r5)*(beta+1)))  //base current(mA)
Ic = Ib*beta                                 //Collector current(mA)  
Vo = Vcc-(r3*Ic)                              //output voltage(V)

//Part b
rpi = (25*beta)/Ic                          //dynamic drain resistance(ohms)
R = r4*(beta+1)                             //resistance(k ohms)
ro = (rpi*R)/(rpi+R)                         //rpi||R(k ohms)
Req = r+((Rth*ro)/(Rth+ro))                  //equivalent resistance(k ohms) 
Cc1 = 1/(Req*2*(%pi)*fL)                 //coupling capacitor(uF)

//Part c
Ce = 1/(2*(%pi)*fL*Req1)                //emitter capacitance(uF)
CE = beta*Ce                               //emitter capacitance(uF) after current gain

//Part d
Ce1 = 1/(2*(%pi)*f*Req1)              //emitter capacitance(uF)
CE1 = beta*Ce1                           //emitter capacitance(uF) after current gain
Csum = Cc1+CE1                            //total capacitance(uF)

//Results
printf ("a)Ic and Vo are %.2f mA and %.f V",Ic,Vo)
printf ("b)Cc1 is %.3f uF",Cc1/1E-3)
printf ("c)Ce is %.1f uF",CE/1E-3)
printf ("d)Csum is %.3f uF",Csum/1E-2)
