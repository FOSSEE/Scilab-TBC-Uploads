//chapter-11,Example11_8,pg 507

f=1*10^3//frequency

R6=10*10^3//feed-back resistor

R5=22*10^3//feed-in resistor

R4=10*10^3//integrator resistor

C=0.1*10^-6//integrator capacitor

Vsx=2//comparator pulse amplitude

Vi=((f*R4*R5*C)/(R6*4*Vsx))//controlling voltage

printf("controlling voltage\n")

printf("Vi=%.2f V\n",Vi)