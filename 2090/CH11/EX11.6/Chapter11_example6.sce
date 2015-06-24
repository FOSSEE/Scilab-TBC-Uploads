clc
clear
//Input data
S=15;//The speed of the piston in m/s
ps=0.35;//The scavenging pressure in bar
pa=1.03;//Atmospheric pressure in bar
r=18;//The compression ratio 
t=35;//The inlet temperature in degree centigrade
Rsc=0.9;//The scavenging ratio 
ta=15;//The atmospheric temperature in degree centigrade
nc=0.75;//Compressor efficiency 
g=1.4;//Adiabatic index
R=287;//Real gas constant in J/kgK
Cp=1005;//Specific heat of gas in J/kgK

//Calculations
pi=ps+pa;//The scavenging pressure in bar
Ti=(273+ta)+t;//The inlet temperature in K
pr=pa/pi;//The ratio of the pressure for calculations
di=(pi*10^5)/(R*Ti);//The density in kg/m^3
ai=(g*R*Ti)^(1/2);//The sonic velocity in m/s
C=(Rsc)/[2*((r-1)/r)*(ai/S)*(pi/pa)*[(2/(g-1))*[[(pr)^(2/g)]-[(pr)^((g+1)/g)]]]^(1/2)];//The flow coefficient
ds=(pa*10^5)/(R*Ti);//The density in kg/m^3
mep=(ds*Rsc*Cp*Ti*[[(pi/pa)^((g-1)/g)]-1])/[(nc*((r-1)/r))*10^5];//Mean effective pressure in bar

//Output
printf(' The flow coefficient = %3.4f \n The compressor mean effective pressure = %3.1f bar ',C,mep)
