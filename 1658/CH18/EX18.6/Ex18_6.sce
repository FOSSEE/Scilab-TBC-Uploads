clc;
//e.g 18.1
Vcc=12;
Rc=2.2*10**3;
Rb=240;
B=50;
Vbe=0.7;
RE=0;
Ic=(Vcc-Vbe)/(RE+(Rb/B));//collector current
disp('mA',Ic,"Ic=");
Vce=Vcc-(Ic*10**-3)*Rc;//CE voltage
disp('V',Vce*1,"Vce=");
Icsat=Vcc/Rc;
disp('mA',Icsat*10**3,"Icsat=");
Vcec=Vcc;//cutoff voltage
i=5.45:-0.5:0;
plot(i);
a=gca() //get the current axes
a.box="off";
xlabel("VCE");
ylabel( "IC");
