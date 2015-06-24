clear;
clc;
//Example 12.6
Af=10^5;
Aif=50;
Rf=10000;
Ro=20;
//x=(1+biAi)
x=Af/Aif;
printf('\n(1+biAi)=%.e\n',x)
Rif=Rf/x;
printf('\ninput resistance =%.2fOhm\n',Rif)
Rof=Ro*x;
Rof=Rof*0.001;//Mohm
printf('\noutput resistance=%.2f MOhm\n',Rof)
