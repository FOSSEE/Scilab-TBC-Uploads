clc;
R1=20000; //Ohm
R2=20000; //Ohm
Vcc=10; //Volt
Vb=Vcc*(R2/(R1+R2)); //Volt
Ve=Vb-0.7; //Volt
Re=5000; //Ohm
Ie=Ve/Re; //Ampere
Vceq=Vcc-Ve; //Volt
disp('V',Vb,"Vb=");//The answers vary due to round off error
disp('V',Ve,"Ve=");//The answers vary due to round off error
disp('A',Ie,"Ie=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error

