clc;funcprot(0);//EXAMPLE 20.48
// Initialisation of Variables
rp=4;........//Stagnation pressure ratio
etaisen=0.85;.....//Stagnation isentropic efficiency
p1=1;.............//Inlet stagnation pressure in bar
t1=300;...........//Inlet stagnation temperature in K
Rd=0.5;............//Degree of reaction
Cu=180;...........//Mean blade speed in m/s
Wd=0.9;...........//Work done factor
htr=0.42;.......//Hub tip ratio
al1=12;be2=al1;.......//Relative air angle at rotor inlet in degrees
al2=32;be1=al2;........//Relative air angle at rotor at outlet in degrees
ga=1.4;...........//Ratio of specific heats
cp=1.005;..........//Specific heat capacity at constant pressure in kJ/kgK
R=287;..........//Gas constant in J/kgK
m=19.5;..........//Mass flow in kg/s
//Calculations
tN1=t1*(rp^((ga-1)/ga));......//Temperature at the end of compression stage due to isentropic expansion in K
tN=((tN1-t1)/etaisen)+t1;
etap=log(rp^((ga-1)/ga))/log(tN/t1);...........//Stagnation polytropic efficiency
disp(etap*100,"Stagnation polytropic efficiency in %:")
Cf=Cu/(tan(al1*%pi/180)+tan(be1*%pi/180));
Cw1=Cf*tan(al1*%pi/180);Cw2=Cf*tan(al2*%pi/180);
wcps=Cu*(Cw2-Cw1)*Wd/1000;.............//Work consumed per stage in kJ/kg
wc=cp*(tN-t1);...............//Work consumed by compressor in kJ/kg
N=round(wc/wcps);.......//No of stages
disp(N,"No of stages:")
C1=Cf/cos(al1*%pi/180);.......//Absolute velocity at exit from guide vanes in m/s
ti=t1-((C1*C1)/(2*cp*1000));..........//Inlet temperature in K
disp(ti,"Inlet temperature in K:")
pi=p1*((ti/t1)^(ga/(ga-1)));......//Inlet pressure in bar
disp(pi,"Inlet pressure in bar:")
rho1=(pi*10^5)/(R*ti);.............//Density of air approaching the first stage
r1=sqrt(m/(rho1*%pi*Cf*(1-(htr^2))));rh=r1*htr;
l=r1-rh;............//Height of the blade in the first stage in m
disp(l*100,"Height of the blade in the first stage in cm:")
