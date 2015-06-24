

//Variable declaration
Idc=0.1           //dc current(A)
Rf=0.5            //forward resistance(ohms)
Rl=20             //load resistance(ohm)
Rs=1              //secondary resistance of transformer(ohm)

//Calculations
//Part a
Vdc=Idc*Rl                       //dc voltage(V)
Vm=(%pi/2)*(Vdc+Idc*(Rs+Rf)) //mean voltage(V)
Vrms=Vm/sqrt(2)             //rms value of voltage(V)   

//Part b
Pdc=Idc**2*Rl                  //dc power supplied to the load

//Part c
PIV=2*Vm                       //PIV rating for each diode(V)

//Part d
Im=(%pi/2)*Idc            //peak value of current(mA)
Irms=Im/sqrt(2)          //rms calue of current(A)
Pac=Irms**2*(Rs+Rf+Rl)        //ac power input(W)

//Part e
eta=(Pdc/Pac)*100             //conversion efficiency

//Part f
Vr=((Rs+Rf)/Rl)*100           //voltage regulation(V)

//results
printf ("rms value of voltage is %.2f V",Vrms)
printf ("dc power supplied to load is %.1f W",Pdc)
printf ("PIV rating for each diode %.2f V",PIV)
printf ("ac input power is %.3f W",Pac)
printf ("conversion efficiency %.1f %%",eta)
printf ("voltage regulation %.1f %%",Vr)
