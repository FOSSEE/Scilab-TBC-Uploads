//Ex11_1 Pg-536
clc

Vcc=15 //supply voltage in V
R1=2*10^(3) //resistor R1 in ohm
R2=470 //resistor R2 in ohm
Rc=680 //collector resistor in ohm
Rl=2.7*10^(3) //load resistor in ohm
Re=220 //emitter resistor

Idc=Vcc/(Rc+Re) //saturation current
printf("(1) Idc_sat = %.1f mA \n",Idc*1e3) 

DCload=Rc //Dc load resistance
printf(" (2) DC load = %.0f ohm \n",DCload)

ACload=Rc*Rl/(Rc+Rl) //Ac load resistance 
printf(" (3) AC load = %.0f ohm \n",ACload)

Vb=R2/(R1+R2)*Vcc //base voltage
Icq=(Vb-0.7)/Re //collector current
printf("(4) Icq = %.1f mA \n",Icq*1e3)
//answer in the book is wrong

Vc=Vcc-Icq*Rc //collector emitter voltage
Vceq=Vc-Icq*Re
printf("(5) Vceq = %.1f V \n",Vceq)
//answer in the book is wrong

Pac=Vcc^2/(8*Rl) //ac power
Pdc=Vcc*Idc //dc power
n=Pac/Pdc*100 //efficiency
printf(" Efiiciency = %.0f %%",n)
