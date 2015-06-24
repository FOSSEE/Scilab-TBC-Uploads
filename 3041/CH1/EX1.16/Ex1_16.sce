

//Variable declaration
Rf=5                    //forward resistance(ohms)
Vo=20                   //output voltage(V)
Rs=10                   //secondary resistance of transformer(ohm)

//Calculations
//Part a
Idc=0.1                 //dc current(A)                  
Vm=Vo*(sqrt(2))    //mean voltage(V)
Vdc=(2*Vm/(%pi))-Idc*(Rs+2*Rf)  //dc voltage(V)

//Part b
Idc1=0.2                //full load dc current(A)
Vdc2=((2*(sqrt(2))*Vo)/(%pi))-Idc1*(Rs+2*Rf) //full load dc voltage(V)
Rl=Vdc2/Idc1              //load resistance(ohm)
x=((2*Rf+Rs)/Rl)*100      //% regulation 

//Part c
Idc=0.2                  //dc current(A)
Im=(%pi)*Idc/2       //peak current(mA)
Ilrms=Im/sqrt(2)    //rms current(mA)
Vlrms=Ilrms*Rl           //load rms voltage(V) 

//Part d
Vldc=14                               //load dc voltage(V)
Vlacrms=sqrt(Vlrms**2-Vldc**2)   //rms value of ac component(V)

//Results
printf ("dc voltage %.f V",Vdc)
printf ("regulation is %.2f %%",x)
printf ("rms value of output voltage at dc load current is %.2f V",Vlrms)
printf ("rms value of ac component of voltage %.2f V",Vlacrms)
