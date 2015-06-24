//Ex10_2 Pg-491
clc

A=150 //voltage gain
Acm=0.5 //common mode voltage gain
Vin=1*10^(-3) //input voltage in V

Vo=A*Vin //output voltage
printf("Amplified output voltage = %.2f V \n",Vo)

Vo=Acm*Vin //output voltage
printf(" Attenuated output voltage = %.1f mV",Vo*1e3)
