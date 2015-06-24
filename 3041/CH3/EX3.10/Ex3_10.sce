//Variable declaration
Vcc=10       //supply voltage(V)
Rc=4.7       //collector current(kohms)
Rb=250       //base resistance(kohms)
Re=1.2       //emitter resistance(kohms)
beeta=100    //current gain
Vbe=0.7      //base to emitter voltage(V)

//Calculations
//Part a
Ib=(Vcc-Vbe)/(Rb+(beeta*(Rc+Re)))   //base current(uA)
Ic=beeta*Ib                         //collector current(mA)
Vce=Vcc-Ic*(Rc+Re)                  //collector to emitter voltage(V)
//Part b
beeta1=150                          //current gain
Ib1=(Vcc-Vbe)/(Rb+(beeta1*(Rc+Re))) //base current(mA)
Ic1=beeta1*Ib1                      //collector current(mA)
Vce1=Vcc-Ic1*(Rc+Re)                //collector to emitter voltage(V)
deltaIc=((Ic1-Ic)/Ic)*100           //small change in Ic(mA)
deltaVce=((Vce-Vce1)/Vce)*100       //small change in Vce(V)

//Results
printf ("values of Ic is %.2f mA and Vce : %.2f V",Ic,Vce)
printf ("values of Ic1 is %.2f mA and Vce1 is %.2f V",Ic1,Vce1)
printf ("%% change in Ic is %.2f %% and in Vce is %.2f %% ",deltaIc,deltaVce)
