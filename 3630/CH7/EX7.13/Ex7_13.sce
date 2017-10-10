clc;
Vcc=16; //Volt
Vbe=0.7; //Volt
Rb=680000; //Ohm
Hfe=50;
Rc=6200; //Ohm
Re=1600; //Ohm
Ib=(Vcc-Vbe)/(Rb+((Hfe+1)*Re)); //Ampere
Icq=Hfe*Ib; //Ampere
Vceq=Vcc-Icq*(Rc+Re); //Volt
disp('mA',Icq*1000,"Icq=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error

