clc;
Vcc=10; //volt
RL=10; //ohm
Icsat=Vcc/(2*RL); //Ampere
Vceoff=Vcc/2; //Volt
disp('mA',Icsat*1000,"Icsat=");//The answers vary due to round off error

disp('V',Vceoff,"Vceoff=");//The answers vary due to round off error


