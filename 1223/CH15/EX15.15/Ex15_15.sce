clear;
clc;
//Example 15.15
Aol=1000;
Vref=5;
Vo=10;
Io=0.1*0.001;
Vt=0.026;
Rof=2*Vt*Vo/(Io*Vref*Aol);
printf('\noutput resistance=%.2f mOhm\n',Rof)
//dVo/Vo=V  and dIo/Io=I
//V=-I*2*Vt/(Vref*Aol)
//V/I=x
x=-2*Vt/(Vref*Aol);
printf('\npercent change=%.2e\n',x)
