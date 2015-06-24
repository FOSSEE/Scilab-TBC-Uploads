//Variable declaration
beta = 50.                 //common emitter current gain
R1 = 25.                   //resistance(k ohms)
R2 = 75.                   //resistance(k ohms)
Ic = 1.25                  //collector current(mA)
Vcc = 10                   //supply voltage to collector(V)
s = 10*10^-3              //signal strength(V)
Rs = 0.5                  //output impedance(k ohms)
Vo = 1                    //output voltage(V)
Vs = 1.                    //source voltage(V) 
Vl = 12                   //load at output terminal(Vl)
Vbe = 0.7                 //base to emitter voltage(V)
Rl = 12

//Calculations
rpi = ((25*beta)/Ic)              //dynamic junction resistance(k ohms)
Rb = (R1*R2)/(R1+R2)               //R1||R2(k ohms)
r = (Rb*rpi*10^-3)/(Rb+rpi*10^-3)              //Rb||rpi(k ohms)
Avo = ((Vo*rpi)/Vcc)                     //voltage gain
Ib = (r*Vs)/(Rs+r)*Vs                    //base current(mA)
Rc = (Rl*Avo)/(beta*Ib*Rl-Avo)          //collector resistance(k ohms)
Vth = (Vcc*R1)/(R1+R2)                   //thevinine's voltage(V)
Ib1 = Ic/beta                           //base current(mA)
Re = (Vth-Vbe-(Rb*Ib1))/((beta+1)*Ib1)    //emitter resistance(k ohms) 

//Results
printf ("value of Rc is %.2f and Re is %.2f k ohms",Rc,Re)
printf (" Vth value is wrong substituted in the book" )
