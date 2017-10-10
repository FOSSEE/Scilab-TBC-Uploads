clc;
Vcc=8; //volt
Vbe=0.7; //volt
Rb=360000; //ohm
Ib=(Vcc-Vbe)/Rb; //Ampere
Hfe=100; 
Ic=Hfe*Ib;//Ampere
Rc=2000; //ohm
Vce=Vcc-Ic*Rc; //volt
disp('mA',Ic*1000,"Ic=");//The answers vary due to round off error
disp('V',Vce,"Vce=");//The answers vary due to round off error


