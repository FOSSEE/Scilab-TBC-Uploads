clc
clear
//input
vp=50//ac source supply
r1=35
r2=1450 //resistors
//calculation
vs=4*vp//transformer equation
i=100/(r1+r2)//peak current
irms=i/sqrt(2)//rms current
v0=100*r1/(r1+r2)
pp=100-v0//peak pd
//output
printf("the rms value of current is %3.3f A",irms)
printf("\n the peak pd is %3.3f V",pp)
