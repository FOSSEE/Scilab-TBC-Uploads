//chapter11
//example11.12
//page210

Rc=800d-3 // kilo ohm
V_Rc=0.5 // V
Vcc=8 // V
alpha=0.96

Vce=Vcc-V_Rc
Ic=V_Rc/Rc // mA
gain_beta=alpha/(1-alpha)
Ib=Ic/gain_beta

printf("collector emitter voltage = %.3f V \n",Vce)
printf("base current = %.3f mA \n",Ib)
