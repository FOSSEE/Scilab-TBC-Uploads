

//Variable declaration
beeta=98.                          //current gain
rpi=1.275                          //dynamic resistance(k ohms)
Rb=220.                            //base resistance(k ohms)
Re=3.3                             //emitter resistance(k ohms)
Vcc=12.                            //supply voltage(V)
Vbe=0.7                            //base to emitter voltage(V)

//Calculations
//Part a
x=rpi/(1+beeta)
Av=Re/(Re+x)                     //voltage gain

//Part b
Zb=rpi+(1+beeta)*Re            //impedance(k ohms)
Zi=(Zb*Rb)/(Zb+Rb)             //input impedance(k ohms)
Zo=(Re*x)/(Re+x)               //output impedance(k ohms)

//Part c
Ib=(Vcc-Vbe)/(Rb+(Re*(1+beeta)))     //as Ie=(1+beeta)*Ib
Ic=beeta*Ib                         //collector current(mA)
rpi=beeta*(25/Ic)                   //dynamic resistance(k ohms)

//Results
printf ("voltage gain is %.3f",Av)
printf ("input impedance is %.1f KOhm and output impedance is %.1f ohms",Zi,Zo/1E-3)
printf ("value of Ic is %.3f mA",Ic)
printf ("value of rpi is %.3f k ohms",rpi/1E+3)
