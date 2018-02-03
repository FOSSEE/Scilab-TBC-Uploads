clear
//
//
//

//Variable declaration
Vm=20        //voltage(V)
RL=500       //load resistance(ohm)
rf=10        //forward resistance(ohm)
VB=0.7       //bias voltage(V) 

//Calculation
Im=(Vm-VB)*10**3/(rf+RL)     //peak current(mA)
Vo=Im*RL/10**3               //peak output voltage(V)

//Result
printf("\n peak current is %0.1f  mA",Im)
printf("\n peak output voltage is %0.1f  V",Vo)
