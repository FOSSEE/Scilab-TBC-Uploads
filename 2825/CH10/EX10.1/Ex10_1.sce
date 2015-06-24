//Ex10_1 Pg-490
clc

Rc=1*10^(6) //collector resisstor in ohm
Re=2*10^(6) //emitter resistor in ohm
Vin=1*10^(-3) //input voltage in V

Acm=Rc/Re //Common moce voltage gain
printf("Common moce voltage gain = %.1f \n",Acm) 

Vo=Acm*Vin //output voltage
printf(" Output voltage = %.1f mV",Vo*1e3)

disp("Thus a differential amplifier in common mode attenuates the input signal rather than amplifying it")
