clc;
Vcc=8; //volt
Rc=2000; //ohm
Icsat=Vcc/Rc; //Ampere
Vceoff=Vcc; //volt
Vcc=8; //volt
Vbe=0.7; //volt
Rb=360000; //ohm
Ib=(Vcc-Vbe)/Rb; //Ampere
Hfe=100; 
Ic=Hfe*Ib;//Ampere
Rc=2000; //ohm
Vce=Vcc-Ic*Rc; //volt

T1=0:2:8;  // T1 axes is for voltage axes
T2=4:-1:0; //T2 axes is for Ic mA 

plot(T1,T2)
xlabel('Vce(V)')
ylabel('Ic(mA)')

