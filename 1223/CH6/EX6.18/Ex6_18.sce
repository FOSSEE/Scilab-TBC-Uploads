clear;
clc;
//Example 6.18
//Determine the small signal voltage gain of a circuit in fig.6.55
Idss=12;
Vp=-4;
//lambda=y
y=0.008;
Vgsq=poly(0,'Vgsq');
p=poly([26.4 17.2 2.025],'Vgsq','c')
printf('\nroots=%fV\n',roots(p))
Vgsq=-2.01
Idq=Idss*(1-Vgsq/Vp)^2;
printf('\nquiescent drain current=%f mA\n',Idq)
gm=(-2*Idss/Vp)*(1-Vgsq/Vp);
printf('\ntransconductance=%.2f mA/V\n',gm)
ro=(1/(y*Idq));
printf('\noutput resistance=%.2f KOhm\n',ro)
Rd=2.7;
Rl=4;
x=Rd*Rl/(Rd+Rl);
Av=-gm*ro*x/(ro+x);
printf('\nsmall signal voltage gain=%.2f \n',Av)
