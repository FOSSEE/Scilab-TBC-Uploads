//Variable declaration
Vbe=0.7                      //base to emitter voltage(V)
Rb=250                       //base resistance(k ohms)
Vcc=10                       //supply voltage(V)
Rl=0.5                       //load resistance(k ohms)

//Calculations
Ic=Vcc/Rl                    //collector current(mA)
IbQ=(Vcc-Vbe)/Rb             //Ib at operating point(uA)
IcQ=8                        //Ic at operating point(mA)
VceQ=6                       //Vce at operating point(V)

//Results
printf ("values are IbQ : %.4f uA,IcQ: %.f mA and Vcc : %.f V",IbQ,IcQ,Vcc)
printf ("collector current Ic is %d mA and output voltage,vL=6-2 sinwt V",Ic)
