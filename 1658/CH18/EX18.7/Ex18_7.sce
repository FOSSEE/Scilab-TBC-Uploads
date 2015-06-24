clc;
//e.g 18.7
Vcc=30;
Rb=1.5*10**6;
Rc=5*10**3;
beta=100;
Ic=Vcc/Rc;//saturation current
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc;//cut-off voltage
disp('V',Vce*1,"Vce=");
Ib=Vcc/Rb;//base current
disp('microA',Ib*10**6,"Ib=");
 Ic=beta*Ib;
  disp('mA',Ic*10**3,"Ic=");
  Vce=Vcc-Ic*Rc;
  disp('V',Vce*1,"Vce=");
i=6:-0.2:0;
plot2d(i);
a=gca() //get the current axes
a.box="off";
xlabel("VCE");
ylabel( "IC");
