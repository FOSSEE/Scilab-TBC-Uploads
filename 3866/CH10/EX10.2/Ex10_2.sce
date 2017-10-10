clc; clear; close;

Ceff=1;//in fF/um
Cint=0.2;//in fF/um
Cg=2;//in fF/um
Wn=0.8;//in um
Wp=0.4;//in um
Lwire=20;//in um
reff=12.5/2;//in kiloohm
rsq=0.054;//in ohm
Cfan=4*Cg*(Wn+Wp);
disp(Cfan,'Fanout Capacitance(in fermifarads)=');
Cself=Ceff*(Wn+Wp);
disp(Cself,'Self Capacitance(in fermifarads)=');
Cwire=Cint*Lwire;
disp(Cwire,'Wire Capacitance(in fermifarads)=');
Ctot=Cfan+Cself+Cwire;
disp(Ctot,'Total Capacitance(in fermifarads)=');
Tdriver=reff*Ctot;
disp(Tdriver,'total delay without wire resistance(in picoseconds)=');
Rwire=(rsq*(Lwire/0.2))/1000;
Tdriver1=reff*(Cself+Cg)+(reff+Rwire)*(Cfan+Cg);
disp(Rwire,'wire resistance (in kiloohms)=');
disp(Tdriver1,'total delay with wire resistance(in picoseconds)=');
disp('Inclusion of wire resistance made no appreciable difference');
