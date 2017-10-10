clc;
vcc=12;
Rc=1200;
Icsat=vcc/Rc;
hfe=100;
Ib=Icsat/hfe;
Rb=47000;
vbe=0.7;
Vpk=(Ib*Rb)+vbe;
disp('V',Vpk,"Vpk=");//The answers vary due to round off error


