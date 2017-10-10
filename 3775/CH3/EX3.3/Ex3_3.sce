//Ex 3.3 page 119

clc;
clear;
close;

//v2t = 325*sin(w*t)
R=20;// ohm
alfa=45;// degree
vm=325;// V
V=230;// V
printf('part (a)\n')
Vo=vm/2/%pi*(1+cosd(alfa)) ;// V
Io=Vo/R;// A
printf(' dc voltage Vo = %.1f V',Vo)
printf('\n & Current Io = %.3f A',Io)
printf('\n\n part (b)\n')
Vor=vm/2/sqrt(%pi)*sqrt((%pi-%pi/180*alfa)+1/2*sind(2*alfa));// V
Ior=Vor/R;// A
printf(' rms voltage Vor = %.3f V',Vor)
printf('\n & Current Ior = %.3f A',Ior)
printf('\n\n part (c)')
Pdc=Vo*Io;// W
Pac=Vor*Ior;// W
eta=Pdc/Pac;// rectification efficiency
printf("\n dc Power = %.2f W", Pdc)
printf("\n ac Power = %.2f W", Pac)
printf("\n Rectification efficiency = %.4f", eta)
printf('\n\n part (d)')
FF=Vor/Vo;// form factor
RF=sqrt(FF**2-1)
printf('\n Form factor = %.3f ',FF)
printf('\n Ripple factor = %.3f ',RF)
printf('\n\n part (e)')
VA=V*Ior;// VA
TUF=Pdc/V/Ior;// Transformer Utilization factor
printf("\n VA rating = %.1f VA", VA)
printf("\n Transformer Utilization factor = %.4f", TUF)
printf('\n\n part (f)')
Vp=vm;// V
printf("\n Peak inverse voltage = %d V",Vp)
