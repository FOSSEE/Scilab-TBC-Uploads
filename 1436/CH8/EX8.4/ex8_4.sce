//Example 8.4, page no-508
clear
clc
//(a)
T=200
T0=300
Ti=70
t=3
x=(T-T0)/(Ti-T0)
tow=-t/log(x)
printf("(a)\nTime constant  tow=%.1f s",tow)
//(b)
t1=5
T5=T0+((Ti-T0)*%e^(-t1/tow))
printf("\n(b)\nTemperature after 5 seconds T5 = %.2f°C",T5)
