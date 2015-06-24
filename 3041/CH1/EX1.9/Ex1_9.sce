//Variable declaration
Vx=1.4              //voltage at point X(V) 
Vt=0.7              //diode voltage(V)
Vcc=5               //cathode voltage(V)  
R=1                 //circuit resistance(ohm) 
Vs=Vx-Vt            //supply voltage(V)

//Calculations
I1=(Vcc-Vt-Vs)/R      //current throgh D1(mA) for 0<Vs<0.7
I2=0                  //current through D2 and D3
I1=(Vcc-Vt-Vs)/R   //for Vs>0.7 as D2 and D3 conducts

//Results
printf ("I1 for 0<Vs<0.7 is %.1f mA",I1)
printf ("I2 for 0<Vs<0.7 is %.1f mA",I2)
printf ("I1 and I2 for Vs>0.7 is %.1f mA",I1)
