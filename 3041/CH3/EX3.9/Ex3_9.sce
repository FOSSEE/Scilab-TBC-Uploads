//Variable declaration
Ic=4                      //collector current(mA)
Vce=8                     //collector emitter voltage(V) 
beeta=100                 //current gain   
Rb2=24                    //base resistance(kohms)
Vbe=0.7                   //base to emitter voltage(V)
Rc=4                     //collector current(kohm)
Re=2                     //emitter resistance(kohms) 
Ib=0.04                  //base current(mA) 

//Calculations
//Part a
Vcc=(Ic*Rc)+Vce+Ic*Re         //from formula Vcc=IcRc+Vce+(Ic+Ib)Re..eq 1

//Part b
Rb1=Rb2*(Vcc-(Vbe+Ic*Re))/((Vbe+Ic*Re)+Ib)  //from eq 1 and also from Vbb= Vcc(Rb2/(Rb1+Rb2))
Rb=(Rb1*Rb2)/(Rb1+Rb2)                      //base resistance(ohms)
Vbb=(Vcc*Rb2)/(Rb1+Rb2)                     //supply to base(V)

//Part c
abeeta=40                                 //actual current gain
Ib1=((Vbe+Re*Ic)-Vbe)/((1+abeeta)*2+Rb)   //from equation Vbb=IbRb+Vbe+(Ic+Ib)Re
Ic1=abeeta*Ib1                            //collector gain

//Results
printf ("a)Vcc is %.1f V",Vcc)
printf ("b)values are Rb1: %.2f KOhms,Rb : %.2f kohm and Vbb : %.2f V" ,Rb1,Rb,Vbb)
printf ("c)actual value of Ic1 : %.2f mA",Ic1)
