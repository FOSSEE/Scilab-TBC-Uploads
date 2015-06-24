clear;
clc;
printf("\n Example 15.6");
down_time  = (4/0.00017);
printf("\n Draw down time = %d secs",down_time);
printf("\n\n\n              (a)");
printf("\n from a mass balance the total mass of solids is :")
cs = (6*0.6*2660*10^13)*(10^(-8)*23530)^4;
printf("\n cs = %d kg/m^3",cs);
printf("\n\n\n               (b)");
printf("\n The production rate = %.3f kg/sec",cs*0.00017);

printf("\n The crystal population decreases exponentially with size ")
x = exp((-100*10^(-6))/(10^(-8)*23530));
printf("%d percent",x*100);
printf("\n Thus 34 percent have been discharged by the time they reach 100 um");
printf("\n\n\n               (c)");
//If (100 − 90) = 10 per cent of the nuclei remain and grow to >100 μm, then
t = poly([0],'t');
t1 = roots(t - 10^(4)/log(1/0.10));
printf("\n tr = %d secs",t1);
Q = poly([0],'Q');
Q1 = roots(Q + (4/4343-0.00017));
printf("\n Qf = %f m^3/sec",-Q1);













