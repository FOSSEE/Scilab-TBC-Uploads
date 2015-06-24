//chapter-6,Example6_1,pg 169

n=8//8-bit resolution(conversion of 1 in 256)

Tr=10*10^-6//total trace time(256 conversions in 10*10^-6 s)

Nc=256//total conversions

S=(Nc/Tr)//speed of ADC

printf("speed of ADC\n")

printf("S=%.2f conversions/sec",S)