//Example 17.16//
 
Ic=5;//mA //Collector Current
Ve=5;//mV // Emitter Voltage
Ic1=50;//mA //Collector Current
Ve2=25;//mV //Emitter voltage
a=log(Ic1/Ic)//(Taking antilog to remove the exponential term)
//mprintf("a = %f mV",a)
b=(Ve2-Ve)//(Subtracting the terms)
//mprintf("b = %i ",b)
B=b/a //(Dividing the terms)
mprintf("B = %f mV ",B)
I0=Ic*%e^-(Ve/B)
mprintf("\n I0 = %f mA",I0)
//Therefore
B1=8.69;//mV //constant
Ve3=50;//mV //emitter voltage
I01=2.81;//mA // collector current
Ic=I01*%e^(Ve3/B1)
mprintf("\nIc = %i mA",Ic)
