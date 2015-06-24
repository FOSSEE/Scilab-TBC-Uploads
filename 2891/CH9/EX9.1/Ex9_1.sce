//Exa 9.1
clc;
clear;
close;
// given :
f=1.7 //frequency in MHz
f=1.7*10^6 //frequency in Hz
E=0.5 //electric field in mV/m
E=0.5*10^(-3) //electric field in V/m
sigma=5*10^-5 // conductivity in mho/cm
eta=0.5 // efficiency
epsilon_r=10 //relative permittivity
c=3*10^8 // speed of light in m/s
lambda=c/f //wavelength in m
d=10 // distance in km
d=10*10^3 // distance in m
Df=1.8*10^12*(sigma/f) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
// formula: E=(A*E_not)/d
//E_not=300*sqrt(P_kW) // E_not is in mV/m
//E_not=300*sqrt(P_kW)*10^(-3) // E_not is in V/m
P_kW=(E*d*10^-3/(A*300*10^-3))^2 // Power in kW and d is in km
// formula : P=Ptx*eta
Ptx=P_kW/eta //transmitter power required in kW
disp(Ptx*1000,"transmitter power required in W:")


//note: answer in the book is wrong.scilab give Ptx=11.48W whereas answer in the book is Ptx=12.6W
