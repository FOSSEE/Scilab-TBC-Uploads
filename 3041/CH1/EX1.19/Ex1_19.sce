

//Variable declaration
Idc=60*10**-3                      //dc current(A)
Vm=60                              //peak volage(V)
f=50                               //frequency(Hz)
C=120*10**-6                       //capacitance(F)

//Calculations
//Part a
Vrms=Idc/(4*(sqrt(3))*f*C*Vm) //rms voltage(V)
Vr=2*(sqrt(3))*Vrms           //ripple factor(V)

//Part b
Vdc=Vm-(Vr/2)                      //by simplifying
Vdc = 57.6                         // V
//Part c
r=(Vrms/Vdc)*100                   //ripple factor

//Results
printf ("ripple factor is %.3f Vdc",Vr)
printf ("dc voltage is %.1f V",Vdc)
printf ("ripple factor %.3f %%",r)
