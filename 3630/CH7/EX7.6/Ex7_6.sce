clc;
//for T=25' and Hfe=100
Ib=0.0000203; //Ampere
Ic=0.00203; //Ampere
Vce=3.94; //Volt
//for T=100' andHfe=150
Hfe=150;
Vcc=8; //volt
Rc=2000; //ohm
Ic=Hfe*Ib; //Ampere
Vce=Vcc-Ic*Rc; //volt
disp('mA',Ic*1000,"Ic=");//The answers vary due to round off error
disp('V',Vce,"Vce=");//The answers vary due to round off error


