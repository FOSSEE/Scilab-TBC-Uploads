clear;
clc;
//Example 12.5
Av=10^5;
Avf=50;
Rf=10;//Kohm
Ro=20000;//Ohm
//x=(1+bvAv)
x=Av/Avf;
printf('\n(1+bvAv)=%.e\n',x)
Rif=Rf*x;
Rif=Rif*0.001;//MOhm
printf('\ninput resistance=%.2f MOhm\n',Rif)
Rof=Ro/x;
printf('\noutput resistance=%.2f Ohm\n',Rof)
