//Ex7_9 Pg-373
clc

Rd=3000 //source resistance in ohm
Rl=5000 //load resistance in ohm
Req=Rd*Rl/(Rd+Rl) //equivqlent resistance

gm=4500*10^(-6) //voltage gain in microMhos
Av=(-1)*gm*Req //voltage amplification
printf("Voltage Amplification = %.2f \n",Av)
Vi=100*10^(-3) //input voltage
Vout=abs(Av)*Vi //output voltage (value in textbook is wrong)
printf(" Output voltage = %.1f V",Vout)
