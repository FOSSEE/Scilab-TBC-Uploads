//Variable declaration
Ilmax=100                //load maximum current(mA)
Ilmin=0                  //load minimum current(mA)
Rz=0.05                  //zener diode resistance(ohms)
Rs=10.                    //source resistance(k ohms)
Vl=16.015                //load voltage(V)
Vl1=16.                  //nominal load voltage(V) 
Vs=20                    //source voltage(V)
Vz=16                    //zener diode voltage(V)

//Calculations
//Case 1 (i)
Iz=(Vl-Vl1)/Rz           //zener current(mA)
Is=Iz+Ilmax              //supply current(A)

//Case 1 (ii)
Is1=(Vs-Vz)/(Rs+Rz)           //supply current(mA)
Vl2=Vl1+(Is1*Rz)              //voltage(V)  
Vr=((Vl2-Vl)/Vl1)*100        //voltage regulation

//Case 2 (i)
Vs=18                        //supply voltage(V)
Ilmax=0.1                    //load current max(A)
Vl=16.005                    //load voltage(V)
Iz=(Vl-Vl1)/Rz               //zener current(mA)
Is2=Ilmax+Iz                 //supply current(A)

//Case 2 (ii)
Ilmin=0
Iz1=(Vs-Vl1)/(Rs+Rz)        //minimum diode current(mA) 
Vl=Vl1+(Iz*Rz)              //load voltage at Ilmin(V)          

//Part a
//Variable declaration
Is=0.4                  //supply current(A)
Vs=20                    //supply voltage(V)   
Vl=16.015               //load voltage(V)
Iz=0.3                   //zener current(mA)

//Calculations
P=Is**2*Rs               //power dissipated by Rs(W)

//Part b
Pd=Vl*Iz                  //power dissipated(W)
Po=(Vs**2)/Rs             //output power(W)

printf ("maximum power dissipated by Rs is %.1f W",P)
printf ("maximum power dissipated by diode is %.3f W",Pd)
printf ("minimum diode current is %.3f A",Iz1)
printf ("voltage regulation is %.2f %%",Vr)
printf ("output shorted will be %.1f W",Po)
