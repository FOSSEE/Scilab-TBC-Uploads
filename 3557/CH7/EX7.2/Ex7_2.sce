//Example 7.2//
a=8.8*10^-6;//mm/(mm degree C) //linear coefficient of thermal expansion
L0=0.1;//mm //Given direction
T=1000;//degree Celsius // Temperature
T1=25;//degree Celsius //Temperature
dL=a*L0*(T-T1)
mprintf("dL = %e m  ",dL)
b=10^3;// (As 1 milli = 10^-3 milli) 
dL1= dL*b
mprintf("\ndL1 = %f mm (As 1 milli = 10^-3 milli)",dL1)
