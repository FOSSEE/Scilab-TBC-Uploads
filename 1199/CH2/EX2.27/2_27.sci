// 2.27
clc;
Ro=3980;
Ta=273;
//3980= a*3980*exp(b/273)
Rt50=794;
Ta50=273+50;
//794= a*3980*exp(b/323)
//on solving
//a=30*10^-6, b=2843
Ta40=273+40;
Rt40=(30*10^-6)*3980*exp(2843/313);
printf("Resistance at 40 degree C= %.2f ohm ",Rt40)
Rt100=(30*10^-6)*3980*exp(2843/373);
printf("\nResistance at 100 degree C= %.2f ohm ",Rt100)