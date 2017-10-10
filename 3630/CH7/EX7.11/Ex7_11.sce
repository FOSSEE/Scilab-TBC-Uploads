clc;
Vcc=12; //volt
Rc=750; //ohm
Re=1500;//ohm
Icsat=(2*Vcc)/(Rc+Re); //Ampere
Vceoff=2*Vcc; //volt
disp('mA',Icsat*1000,"Icsat=");//The answers vary due to round off error
disp('V',Vceoff,"Vceoff=");//The answers vary due to round off error
