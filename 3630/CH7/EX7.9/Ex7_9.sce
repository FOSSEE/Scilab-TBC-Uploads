clc;
Vcc=20; //volt
R2=10000; //Ohm
R1=68000; //ohm
Vth=(R2/(R1+R2))*Vcc; //volt//by voltage divider rule Thevenin
Rth=(R1*R2)/(R1+R2); //ohm
Vbe=0.7; //Volt
Hfe=50;
Re=1100; //Ohm
Rc=6200; //Ohm
Icq=(Vth-Vbe)/((Rth/Hfe)+Re); //Ampere
Vceq=Vcc-Icq*(Rc+Re); //Volt
disp('mA',Icq*1000,"Icq=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error

