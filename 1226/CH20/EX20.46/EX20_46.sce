clc;funcprot(0);//EXAMPLE 20.46
// Initialisation of Variables
etaisen=0.85;.......//Overall isentropic efficiency
t1=293;...........//Inlet temperature in K
rp=4;.............//Pressure ratio
Rd=0.5;................//Reaction factor
Cbl=180;.................//Mean blade speed in m/s
wip=0.82;..............//Work input factor
al1=12;be1=42;......//Blade angels in degrees
ga=1.4;............//Ratio of specific heats  
cp=1.005;.........//Specific heat at constant pressure in kJ/kgK
//Calculations
t21=t1*(rp^((ga-1)/ga));
t2=((t21-t1)/etaisen)+t1;
wrt=cp*(t2-t1);.........//Theoretical work required in kJ/kg
Cf=Cbl/(tan(al1*%pi/180)+tan(be1*%pi/180));
Cw1=Cf*tan(al1*%pi/180);Cw2=Cf*tan(be1*%pi/180);
wcps=Cbl*(Cw2-Cw1)*wip/1000;.............//Work consumed per stage in kJ/kg
N=round(wrt/wcps);.......//No of stages
disp(Cf,"Flow velocity in m/s:")
disp(N,"No of stages:")
