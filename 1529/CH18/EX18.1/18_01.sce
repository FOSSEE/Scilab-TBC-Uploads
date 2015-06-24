//Chapter 18, Problem 1
clc;
v=120;                  //dc supply
c=15e-6;                //capacitance in farad
r=47e3;                 //resistance in ohms
taw=r*c;                //time constant
t1=taw;
vcta= v*(1-%e^(-1*t1/taw));
vct = v/2;
t = 0:0.1:10
vc = v*(1-%e^(-1*t/taw));
plot(t,vc)
xtitle("capacitor voltage/time characteristic", "t", "Vc")
t = -1*taw*log(1 - vct/v);

printf("\n (a)The capacitor voltage at a time equal to one time constant = %.2f V",vcta)
printf("\n (b)The time for the capacitor voltage to reach one half of its steady state value = %.1f sec",t)
