clear
//Given
Vm=50                            //V
rf=20.0
Rl=800                               //ohm

//Calculation
//
Im=(Vm/(rf+Rl))*10**3
Idc=Im/%pi 
Irms=Im/2.0
P=(Irms/1000.0)**2*(rf+Rl)
P1=(Idc/1000.0)**2*Rl
V=Idc*Rl*10**-3
A=P1*100/P

//Result
printf("\n (i) Im= %0.0f mA \nIdc= %0.1f mA \nIrms= %0.1f mA",Im,Idc,Irms)
printf("\n (ii) a.c power input is %0.3f watt \nd.c. power is %0.3f watt",P,P1)
printf("\n (iii) d.c. output voltage is %0.2f  Volts",V)
printf("\n (iv) Efficiency of rectification is %0.1f  percentage",A)
