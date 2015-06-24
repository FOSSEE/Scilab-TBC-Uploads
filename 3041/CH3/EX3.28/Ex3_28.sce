//Variable declaration 
Vcc=16               //supply voltage(V)
Vc=12                 //collector voltage(V)
Ic=8                  //collector current(mA)
Ic1=12                
deltaIc=2000          //collector current(uA)
deltaVce=4            //collector emitter voltage(Vce) 
deltaIb=20            //base current(mA)       
Rl=2.                 //load reistance(k ohms)      

//Calculations
hfe=(deltaIc)/(deltaIb)
hoe=(deltaIc)/(deltaVce)
Rdc=Vcc/Ic                       //dc resistance(k ohms)
Rac=Vc/Ic1                       //ac resistance(k ohms)
Re=Rdc-Rac                       //emitter resistance(k ohms)
Rac1=(Rac*Rl)/(Rac+Rl)           //for load of 2kohms, Rc=Rac
Icq=Vcc/(Rac1+Rdc)               //Ic at operatingpoint(mA) 
Vceq=Vcc-(Icq*Rdc)               //Vc at operating point(V)

//Results
printf ("value of hfe and hoe are %d uS and %d uS",hfe,hoe)
printf ("value Rc and Re are %d k ohms and %d k ohms resp.",Rac,Re)
printf ("value of Icq and Vce %d mA and %.1f V resp.",Icq,Vceq)
