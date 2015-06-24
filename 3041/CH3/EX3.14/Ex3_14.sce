//Variable declaration
Ic=10                       //collector current(mA)
beeta=100                   //current gain
Vbe=0.7                     //base to emitter voltage(V)
Vcc=10                      //supply voltage(V) 

//Calculations
//Part a
R=(beeta*(Vcc-Vbe))/((beeta+2)*Ic)               //resistance(k ohms)  
beeta1=200                                       //current gain
Ic1=(beeta1/(beeta1+2))*((Vcc-Vbe)/R)            //collector current(mA)
Icchange=((Ic-Ic1)/Ic)                           //change in collector current(mA)  

//Part b
Ic2=0.1                                          //collector current(mA)
R1=(beeta*(Vcc-Vbe))/((beeta+2)*Ic)              //resistance(k ohms)
Ic3=(beeta1/(beeta1+2))*((Vcc-Vbe)/R1)           //collector current(mA)
Icchange1=((Ic2-Ic3)/Ic2)                        //change in collector current(mA)

//Results
printf ("%% change in Ic is %.1f %% increase",Icchange)
printf ("%% change in Ic is %.1f %% increase",Icchange1)
