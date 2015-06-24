

//Variable declaration
R1 = 25.                      //resistances(k ohms)
R2 = 100.                     //resistances(k ohms)
Re = 2.                       //emitter resistance(k ohms) 
Vcc = 10.                     //supply voltage to collector
Vbe = 0.7                    //base to emitter voltage(V)
beta = 100.                   //common emitter current gain
Avo = 160                    //voltage gain
Rs = 1                       //source resistance(k ohms)
Vs = 1                       //source voltage(V) 
Rl = 12.5                    //load resistance(k ohms)
Rc1 = 20.                     //collector resistance(k ohms)

//Calculations
//Part a
Rb = (R1*R2)/(R1+R2)              //R1||R2
Vth = (Vcc*R1)/(R1+R2)            //thevinines voltage(V)
Ib = (Vth-Vbe)/(Rb+(beta+1)*Re)   //base current(uA)
Ic = Ib*beta                      //collector current(mA)
rpi = (25*beta)*10^-3/Ic                //dynamic junction resistance(k ohms)

//Part b
Ib1 = 1/rpi                       //small signal analysis 
Rc = -Avo/(-beta*Ib1)             //collector resistance() 

//Part c
r = (Rc1*rpi)/(Rc1+rpi)              //Rc1||rpi1(k ohms) 
Ib2 = (Vs*r)/((1+r)*rpi)               //base curret(mA)
Rc2 = 6.84                             //collector resistance(k ohms)                                      
Avo = -(beta*Ib2)*((Rl*Rc2)/(Rl+Rc2))  //voltage gain

//Results
printf ("value of Ic %.3f mA and rpi is %.2f k ohms"  ,Ic,rpi)
printf ("Rc is %.2f k ohms",Rc)
printf ("Avo is %.1f",Avo)
