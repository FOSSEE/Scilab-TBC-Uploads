//Variable declaration
beeta=160               //current gain
Vee=10                  //emitter voltage(V)
Rb=400                  //base resistance(k ohms)
Veb=0.8                 //emitter to base voltage(V)
Re=2.5                  //emitter resistance(k ohms)
Rc=1.5                  //collector resistance(k ohms)   

//Calculations
//Part a 
Ib=(Vee-Veb)/((Re*(1+beeta))+Rb)    //base current(uA)
Ic=beeta*Ib                         //collector current(mA)
Ie=(beeta+1)*Ib                     //emitter current(mA) 
Vce=Vee-(Re*Ie)-(Rc*Ic)             //emitter to collector voltage(V)   
Vce=-Vce                            //collector to emitter voltage(V)

//Part b
beeta=80                            //current gain 
Ib1=(Vee-Veb)/((Re*(1+beeta))+Rb)   //base current(uA)
Ic1=beeta*Ib1                       //collector current(mA)
Ie1=(beeta+1)*Ib1                   //emitter current(mA)   
Vce1=-(Vee-(Ie1*Re)-(Rc*Ic1))       //collector to emitter voltage(V)   
                      
//Result
printf ("collector current and Vce for beeta=160 are %.2f mA and %.2f" ,Ic,Vce)
printf ("Ic and Vce for beeta=80 are %.2f mA and %.2f",Ic,Vce1)