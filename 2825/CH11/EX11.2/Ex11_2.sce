//Ex11_2 Pg-551
clc

Po=4 //power in watts
n=80/100 //transformer efficiency in percentage
Vcc=30 //supply voltage

Pout=Po/n //effective power 
printf("Effective power to be transfered = %.0f W\n",Pout)

disp("Impedance seen when ""looking into"" the whole winding of centertapped transformer ")
Vp=Vcc //peak voltage
Rload=Vp^2/(2*Pout) 
Rload_4=4*Rload //effective load
printf("\n Effective load = %.0f ohm \n",Rload_4)

disp("Transformer specification Po=4W,RL=16ohm,RL""=360ohm")

Vce=2*Vcc //Maximum transistor voltage
printf("\n Maximum transistor voltage = %.0f V\n",Vce)

Ip=2*Pout/Vp //Maximum transistor current
Ic=Ip
printf("\n Maximum transistor current = %.0f mA \n",Ip*1e3)
// answer in the book is different due to approximate value
printf("\n Transformer specification Vce=60V,Ic=%.0f mA",Ic*1e3)
// answer in the book is different  due to approximate value 
