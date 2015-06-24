

//Variable declaration
R1 = 60                 //resistance(k ohms)
R2 = 140                //resistance(k ohms)
Rs = 4                  //source resistance(k ohms)
Re = 3                  //emitter resistance(k ohms)
Rc = 4                  //collector resistance(k ohms)
Vcc = 10                //supply voltage to collector(V)
Vbe = 0.7               //base to emitter voltage(V)
beta = 100              //common emitter current gain 
Avo = -30               //voltage gain 

//Calculations
//Part a
Rb = (R1*R2)/(R1+R2)                  //R1||R2(k ohms)
Vth = (Vcc*R1)/(R1+R2)                //thevinine's voltage(V)
Ib = (Vth-Vbe)/(Rb+(beta+1)*Re)       //base current(uA)
Ic = Ib*beta                          //collector current(mA) 
Vce = Vcc-(Rc*Ic)-((beta+1)*Ib*Re)    //collector to emitter voltage(V)

//Part b
rpi = ((25*beta)/Ic)*10^-3         //dynamic junction resistance(k ohms)
r = (Rb*rpi)/(Rb+rpi)               //resistance across Vs
Ib1 = r/((Rs+r)*rpi)                //base current(mA)
Rl = (-Rc*Avo)/(Avo+(beta*Ib1*Rc))  //load resistance(k ohms)

//Results
printf ("value of Ic and Vce are %.3f mA and %.2f V",Ic,Vce)
printf ("Rl is %.2f k ohms",Rl)
