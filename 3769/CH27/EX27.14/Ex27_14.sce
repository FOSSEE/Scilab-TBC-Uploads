clear
//Given
Vcc=8               //V
V=0.5               //V
Rc=800.0            //ohm
a=0.96

//Calculation
Vce=Vcc-V
Ic=V/Rc*10**3
B=a/(1-a)
Ib=Ic/B

//Result
printf("\n (i) Collector-emitter voltage is %0.3f  V",Vce)
printf("\n (ii) Base current is %0.3f  mA",Ib)
