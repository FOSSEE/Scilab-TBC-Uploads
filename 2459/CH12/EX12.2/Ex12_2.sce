//chapter12
//example12.2
//page236

Vcc=13 // V
V_knee=1 // V
Rc=4 // kilo ohm
gain_beta=100

V_Rc=Vcc-V_knee
Ic=V_Rc/Rc
Ib=Ic/gain_beta
Vs=Ic/5 // since Ic/Vs = 5 mA/V given

printf("maximum input signal voltage = %.3f V or %.3f mV \n",Vs,Vs*1000)
