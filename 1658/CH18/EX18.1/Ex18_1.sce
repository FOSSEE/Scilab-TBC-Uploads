
clc;
//e.g 18.1
Vbb=10;
Rb=47*10**3;
Vcc=20;
Rc=10*10**3;
B=100;
Ic=Vcc/Rc;//saturation current
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc;//cut-off voltage
disp('V',Vce*1,"Vce=");
i=2:-0.1:0;
plot2d(i);
a=gca() //get the current axes
a.box="off";
xlabel("VCE");
ylabel( "IC");
