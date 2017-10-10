clc;
R2=120; //Ohm
R1=120; //Ohm
Vcc=10; //Volt
Vb=Vcc*(R2/(R1+R2));//Volt
Re=3300; //Ohm
Vbe=0.7; //Volt
Ie=(Vb-2*Vbe)/Re; //Amperes
hfc1=70;
hfc2=70;
RE=3300; //Ohm
Rin1=hfc1*hfc2*RE; //Ohm//hfe=70 for current (Icq) 
disp('MegaOhm',Rin1/1000000,"Rin1=");//The answers vary due to round off error


