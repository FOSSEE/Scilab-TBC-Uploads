clear
//given
Vl=15                //V
Rl=2.0*10**3
Iz=10                   //mA
R1=20.0

//Calculation
Il=(Vl/Rl)*10**3
Ir=Iz+Il
Vr=Ir*10**-2*R1
V=Vr+Vl

//Result
printf("\n Voltage is %0.3f  V", V)
printf("\n Zener rating required is %0.3f  mA",Ir)
