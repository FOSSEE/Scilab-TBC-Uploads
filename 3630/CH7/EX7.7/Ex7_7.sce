clc;
Vcc=10; //volt
R1=18000; //ohm
R2=4700; //Ohm
Vb=(R2/(R1+R2))*Vcc; //volt //voltage divider rule
Ve=Vb-0.7; //volt
Re=1100; //ohm
Icq=Ve/Re; //Ampere//assumption Icq=Ie
Rc=3000; //Ohm
Re=1100; //Ohm
Vceq=Vcc-Icq*(Rc+Re); //Volt
disp('A',Icq,"Icq=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error

