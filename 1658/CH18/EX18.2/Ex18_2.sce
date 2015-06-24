
clc;
//e.g 18.2
Vbb=10;
Rb=50*10**3;
Vcc=20;
Rc=300;
beta=200;
Ic=Vcc/Rc;//saturation current
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc;//cut-off voltage
disp('V',Vce*1,"Vce=");
Ib=(Vbb-0.7)/Rb;
 disp('10^-3A',Ib*10**3,"Ib=");
 Ic=beta*Ib;
  disp('10^-3A',Ic*10**3,"Ic=");
Vce=Vcc-Ic*Rc;
disp('V',Vce*1,"Vce=");
i=21:-0.1:0;
plot2d(i);
a=gca() //get the current axes
a.box="off";
xlabel("VCE");
ylabel( "IC");

