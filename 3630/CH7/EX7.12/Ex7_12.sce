clc; 
Vcc=10; //volt
Vbe=0.7; //volt
Rb=180000; //ohm
Hfe=100;
Rc=1500; //Ohm
Ib=(Vcc-Vbe)/(Rb+(Hfe*Rc)); //Ampere
Icq=Hfe*Ib; //Ampere
Vceq=Vcc-Icq*Rc; //volt
disp('mA',Icq*1000,"Icq=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error

