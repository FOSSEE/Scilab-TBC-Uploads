//Variable declaration
Vbb=5                 //base voltage of bipolar transistor(V)
Vbe=0.7               //base emitter voltage drop(V) in active region  
Rb=50                 //base resistance(ohm)
beeta=50              //current gain
Re=1.8                //emitter resistance(k ohms)    
Vcc=10                //supply voltage(V)
Vce=0.2               //collector to emitter voltage(V)

//Calculations
Ib=(Vbb-Vbe)/(Rb+Re*(beeta+1))      //base current(mA)
Ic=beeta*Ib                         //collector current(mA)
Ie=Ib+Ic                            //emitter current(mA)

//Results
printf ("values are Ib: %.2f mA, Ic: %.2f mA and Ie : %.2f mA",Ib,Ic,Ie)
