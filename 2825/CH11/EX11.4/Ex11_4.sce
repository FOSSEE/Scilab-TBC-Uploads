//Ex11_4 Pg-564
clc

Vcc=10 //supply volage in V
Rc=3600 //collector resistor in ohm
Re=680 //emitter resistor in ohm
Ri=10000 //input resistor in ohm
R2=2.2 //resistor R2 in ohm
R1=10 //resistor R1 in ohm

Vb=R2/(R1+R2)*Vcc //bias voltage 
printf("(1) Bias voltage = %.1f V \n",Vb)

Ie=(Vb-0.7)/Re //emitter current
printf(" Emitter current = %.2f mA\n",Ie*1e3)

Vc=Vcc-Rc*Ie //Dc collector voltage
printf(" DC collector voltage = %.2f V\n",Vc)

Vceq=Vc-Ie*Re //DC collector to emitter voltage
printf(" DC collector to emitter voltage = %.2f V\n",Vceq)

Pd=Vceq*Ie //power dissipation
printf(" Power dissipation = %.2f mW\n",Pd*1e3)

printf("\n(2)If collector resistance Rc is replaced by tank circuit \n there is no voltage drop across it. \n")
Vc=Vcc
printf(" DC collector voltage = %.0f V\n",Vc)

Vceq=Vc-Ie*Re //DC collector to emitter voltage
printf(" DC collector to emitter voltage = %.2f V\n",Vceq)

Pd=Vceq*Ie //power dissipation
printf(" Power dissipation = %.2f mW\n",Pd*1e3)
