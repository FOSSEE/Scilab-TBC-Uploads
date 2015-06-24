

//Variable declaration
Vrms=20                   //secondary voltage(V)
Rs=10                     //Winding resistance(ohm)
Rf=5                      //diode has forward resistance(ohms)
Idc=2*10**-3              //load current(mA)     

//Calculations
//Part a 
Vdc=(Vrms*(sqrt(2)))/(%pi)       //no load Vdc

//Part b 
Vldc=Vdc-(Idc*(Rs+Rf))                    //dc output voltage when load is 20mA

//Part c
Rl=Vldc/Idc                                //load resistance(ohms)
r=((Rs+Rf)/Rl)*100                         //percentage regulation(%)

//Part d
Im=Idc*(%pi)                           //peak current(mA)
Ilrms=Im/2                                 //rms load current(mA) 
Vlrms=Ilrms*Rl                             //rms load voltage(V)    
Vlrmsac=sqrt((Vlrms**2)-(Vldc**2))    //Ripple voltage rms(V)
f=50*2                                     //rippLe frequency(Hz)

//Part e
eta=(((2*(%pi))**2)/(1+((Rs+Rf)/Rl)))*100  //efficiency

//Part f
PIV=Vrms*(sqrt(2))                     //peak inverse voltage(V)   
Vm= PIV
//Results
printf ("no load dc voltage is %.f V",Vdc)
printf ("dc output voltage when the load is drawing 20 mA is %.2f V",Vldc)
printf ("percentage regulation at this load is %.2f %%",(r/1E-1))
printf ("ripple voltage rms is %.2f V and ripple frequency is %.f Hz",Vlrmsac,f)
printf ("power conversion efficiency is %.1f %%",(eta/1E+2))
printf ("PIV is %.f V",PIV)
