//chapter-5,Example5_3,pg 492

Rse=1*10^3//series resistance

Rsh=2*10^3//shunt resistance

Vref=5//ref. voltage

n1=0//input-1

n2=3//input-2

Ro=0.22*10^3//load resistance

Vo=(Vref*(2^n1+2^n2)/16)*(Ro/(Ro+Rsh))//output voltage

printf("output voltage\n")

printf("Vo=%.4f V",Vo) 