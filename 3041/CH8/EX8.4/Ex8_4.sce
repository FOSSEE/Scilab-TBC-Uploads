//Variable declaration
Vi=25                         //input voltage(V) 
Vsmax=30                      //supply voltage max(V)
Vomin=12                   //output minimum voltage or load voltage(V)
Vl=12
R1=20                         //load voltage(V)
Io=15.                        //output current(mA) 
Iq=3.                         //quinscent current of regulator(mA)
Vo=20.                        //output voltage(V)

//Calculations
//Part a
//(i)
Vimax=Vsmax                     //maximum permissible voltage(V)
Ro=0                            //for Vomin=beta=0
//(ii)
Vomax=Vi-2
betaVomax=Vomax-Vomin                   //output voltage(V)
R2max=(R1*betaVomax)/(Vomax-betaVomax)  //R2max(k ohms)
//(iii)
R3=betaVomax/Io                         //R3(k ohms)

//Part b
Vt=(Iq*betaVomax)/Io                   //common terminal fall(V)
Vomin1=Vl+Vt                           //voltage output minimum(V)

//Part c
betaVo=Vo-Vl                          //output voltage(V)
beta=betaVo/Vo                        //current gain
R2=(R1*betaVo)/(Vo-betaVo)            //R2(ohms)

//Results
printf ("a)i)max permissible supply voltage is %.1f V",Vimax)
printf ("ii)output voltage range for Vi=25V is %.1f V to %.1f V and R2max is %.f k ohms",Vomin,Vomax,R2max)
printf ("iii)R3 is %.2f kohms kohms",R3)
printf ("b)Vomin is %.1f V",Vomin1)
printf ("c)R2 is %.2f ohms and R3 is %.3f ohms",R2,R3)
