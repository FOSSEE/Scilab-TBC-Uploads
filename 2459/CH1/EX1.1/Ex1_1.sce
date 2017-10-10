//chapter 1
//example 1.1
//page8

Eg=24 // V
Ri=.01 // ohm
P=100 // W

I=P/Eg // we know that P=Eg*I since for ideal source, V is equivalent to Eg
Vi=I*Ri
V=Eg-(I*Ri)

printf("voltage drop in internal resistance = %.3f V \n",Vi)
printf("terminal voltage = %.3f V",V)
