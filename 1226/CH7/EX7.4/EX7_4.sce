clc;funcprot(0)//EXAMPLE 7.4

//Initializing the variables
n=1;...................//No of cylinders
k=0.5;
Vs=7000;............//displacement volume in cm^3
Vssi= Vs*(10^(-6));........//displacement volume in m^3
OP=14.7;...................//Power developed in kW
N=450;..................//Engine rpm
sfc=0.272;................//Specific fuel consumption in kg/kWh
//Fuel used is C7H16
mC=12;.............//mass of carbon in amu
mH=1;.................//mass of hydrogen in amu
mO=16;.................//mass of oxygen in amu
pi=1.013 * (10^5);................//initial pressure in pascal
T=30;...................//initial temperature in degree celsius
Tk=30+273;................//initial temperature in degree kelvin
R=287;..................//Gas constant for air in J/kg.K
//calculations
disp("The given fuel C7H16 requires 11(O2) for complete combustion")
mf=(7*mC)+(16*mH);
disp (mf,"Hence, Mass of fuel is :")
MO=11* 2 * mO;
disp (MO,"Mass of Oxygen required is :")
ma = MO/0.23;.......//mass of air
//Air contains 23% of oxygen by weight
afr = ma/mf;...............//air fuel ratio is the ratio of mass of air to mass of fuel
disp(afr,"The air fuel ratio is :")
MF = sfc * OP;...........//actual fuel consumed in kg/h
MA = afr*MF;
AAS = MA * (1+0.3);....................//actual air supplied in kg/h
M = AAS + MF;................//mass of charge in kg/h
VCS = ((M/60)*R*Tk)/pi;.............//Volume of charge sucked in m^3/min
DVM = Vssi * (N/2);..............//Displacement volume/min
eta = VCS/DVM;
disp (eta*100,"The volumetric efficiency of the engine is (%) :")
