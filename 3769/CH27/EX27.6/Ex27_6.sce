clear
//Given
rf=20                            //ohm
Rl=980
V=50                               //v

//Calculation
//
Vm=V*sqrt(2)
Im=(Vm/(rf+Rl))*10**3
Idc=(2*Im)/(%pi)
Irms=Im/sqrt(2)

//Result
printf("\n (i) load current is %0.1f  mA",Im)
printf("\n (ii) Mean load currant is %0.0f  mA",Idc)
printf("\n (iii) R.M.S value of load current is %0.3f  mA",Irms)
