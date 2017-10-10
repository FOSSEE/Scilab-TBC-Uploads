clc; clear; close;

Rint=0.027/0.5;//in ohm/um
L=20000;//in um
Cint=0.1;//in fF/um
Reqn=12500;//in ohms
Ceff=1;//in fF/um
W=0.2;//in um
Rwire=Rint*L;
Cwire=Cint*L;
Reff=Reqn/100;
Cself=Ceff*(3*W)*100;
Telmore=(Reff*Cwire/2)+(Reff+Rwire)*Cwire/2;
disp(Rwire,'Wire resistance(in ohms)=');
disp(Cwire,'Wire capacitance(in fermifarads)=');
disp(Reff,'Inverter on resistance(in ohms)=');
disp(Cself,'Inverter output capacitance(in fermifarads)=');
disp(Telmore*10^(-6),'Resulting elmore delay(in nanoseconds)=');
