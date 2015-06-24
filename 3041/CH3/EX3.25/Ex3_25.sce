//Variable declaration
beeta=100                      //current gain factor
Vbe=0.7                        //base to emitter voltage(V)
Rb=250                         //base resistance(k ohms)
Vee=10                         //emitter voltage(V)
Re=1                           //emitter resistance(k ohms)

//Calculations
Ib=(Vee-Vbe)/(Rb+1+beeta)       // solving Rb*Ib+Vbe+(Ic+Ib)=Vee and putting Ic+Ib=(1+beeta)Ib
Ic=beeta*Ib                     //collector current(mA)
rpi=beeta*(25/Ic)               //dynamic resistance(ohms)    
Vi=(rpi*Ib)+(1+beeta)*Re*Ib     //input voltage(V)
Ri=Vi/Ib                        //input resistance(k ohms)

//Results
printf ("value of Ri is %.1f K ohms",Ri/1E+1)
