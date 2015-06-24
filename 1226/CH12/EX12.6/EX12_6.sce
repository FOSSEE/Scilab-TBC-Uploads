clc;funcprot(0);//EXAMPLE 12.6
// Initialisation of Variables
n=8;......//No of cylinders
pw=386.4;...........//Power output in kW
N=800;.............//Engine rpm
fc=0.25;.............//Fuel Consumption in kg/kWh
theta=12;..............//Crank Travel in degree (for injection)
spgr=0.85;...........//Specific Gravity
patm=1.013;............//Atmospheric pressure
cf=0.6;................//Co-efficient of discharge for injector
pcB=32;................//Pressure in cylinder in beginning in bar
piB=207;...............//Pressure in injector in beginning in bar
pcE=55;...............//Pressure in cylinder at the end in bar
piE=595;................//Pressure in injector at the end in bar
rhow=1000;..............//density of water in kg/m^3
//calculations
pwpc = pw/n;......................//Output per cylinder
fcpc = (pwpc*fc)/60;.............//Fuel consumption per cylinder in kg/min
fipc = fcpc/(N/2);................//Fuel injected per cycle in kg
tfic = (theta*60)/(360*N);...........//Time for fuel Injection per cycle
mf = fipc/tfic;......................//Mass of fuel injected per second
pdb = piB-pcB;....................//Pressure difference at beginning
pde = piE-pcE;...................//Pressure difference at end
apd = (pdb+pde)/2;
Ao=mf/(cf*sqrt(2*apd*10^5*spgr*rhow));
disp(Ao*10000,"Orifice Area Required per injector (cm^2):")

