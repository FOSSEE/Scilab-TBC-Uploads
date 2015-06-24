//Variable declaration
Icq=.428            //current at quinscent point(uA)
beta=200.           //current gain
                    //as 74 dB=5000,common mode rejection ratio(dB)
Rc=10.              //collector resistance(k ohms)    
Re=16.              //emitter resistance(k ohms)   
Vcc=15.             //supply voltage(V)

//Calculations
//Part b
Ibq=Icq/beta         //Ib at Q(uA)
rpi=(25*beta)/Icq    //dynamic resistance(k ohms)
gm=beta/rpi          //transconductance

//Part b
vo1=Vcc-(Icq*Rc)    //terminal 1 voltage(V) 
vo2=vo1             //terminal 2 voltage(V) 

//Part c                  
Ad=(gm*Rc)/2        //differential mode gain
Ac=Rc/(2*Re)        //common mode gain
CMRR=Ad/Ac          //common mode rejection ratio

//Part d
Rid=2*rpi                     //differential input resistance(k ohms)
rpi=11.7                      //dynamic resistance(k ohms)
Ric=rpi+(2*(beta+1)*Re)       //common mode input resistance(k ohms)

//Results
printf ("Icq is %.3f mA,and Ibq is  %.2f uA",Icq,Ibq/1E-3)
printf ("vo1 and vo2 have same value as %.1f V",vo1)
printf ("Ad : %.f , Ac : %.3f and CMRR is %.f",Ad/1E-3,Ac,CMRR/1E-3)
printf ("Rid is %.1f K ohms and Ric is %.2f  Mohms",Rid/1E+3,Ric/1E+3)
