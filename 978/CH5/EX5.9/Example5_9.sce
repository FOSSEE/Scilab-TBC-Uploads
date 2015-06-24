//chapter-5,Example5_9,pg 493

n=3//3-bit ADC

Vref=2.2//ref.voltage

Vi=1//input voltage

N=(((2^n)-1)*Vi)/Vref//SAR output

printf("SAR conversion no.\n")

printf("N=%.2f ",N) 