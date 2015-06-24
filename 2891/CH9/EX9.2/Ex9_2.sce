//Exa 9.2
clc;
clear;
close;
// given :
disp("for frequency=500kHz")
f1=500*10^3 //frequency in Hz
c=3*10^8 //speed of light in m/s
lambda1=c/f1 //  wavelength in m
d=100 //distance in km
d=100*10^3 //distance in m
Pt=100 // transmitter power in kW 
eta=50 // efficiency in percentage
eta=0.5 // efficiency
P_kW=Pt*eta // radiated power in kW
E_not=300*1.28*sqrt(P_kW) // field strength in mV/m without ground losses at 1km

 // for sea water earth
epsilon_r=81 // permittivity
sigma=45*10^-3 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E1=(A*E_not)/(d) // in V/m
disp(E1*1000,"electric field strength for sea water earth in mV/m when f=500kHz:")

// for good soil
epsilon_r=20 // permittivity
sigma=10^-4 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E2=(A*E_not)/(d) // in V/m
disp(E2*1000,"electric field strength for good soil in mV/m when f=500kHz:")

// for poor soil
epsilon_r=10 // permittivity
sigma=0.2*10^-4 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E3=(A*E_not)/(d) // in V/m
disp(E3*1000,"electric field strength for poor soil in mV/m when f=500kHz:")

// for cities,industrial areas
epsilon_r=5 // permittivity
sigma=10^-5 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E4=(A*E_not)/(d) // in V/m
disp(E4*1000,"electric field strength for cities,industrial areas in mV/m when f=500kHz:")

// for Rockey soil,flat sandy
epsilon_r=10 // permittivity
sigma=2*10^-3 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E5=(A*E_not)/(d) // in V/m
disp(E5*1000,"electric field strength for Rockey soil,flat sandy in mV/m when f=500kHz:")

// for medium hills,forestation
epsilon_r=13 // permittivity
sigma=5*10^-5 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f1) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda1)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E6=(A*E_not)/(d) // in V/m
disp(E6*1000,"electric field strength for medium hills,forestation in mV/m when f=500kHz:")



disp("for frequency=1500kHz")

f2=1500 // in kHz
f2=1500*10^(3) // in Hz
lambda2=c/f2 // in m
 // for sea water earth
epsilon_r=81 // permittivity
sigma=45*10^-3 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E1=(A*E_not)/(d) // in V/m
disp(E1*1000,"electric field strength for sea water earth in mV/m when f=1500kHz:")

// for good soil
epsilon_r=20 // permittivity
sigma=10^-4 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E2=(A*E_not)/(d) // in V/m
disp(E2*1000,"electric field strength for good soil in mV/m when f=1500kHz:")

// for poor soil
epsilon_r=10 // permittivity
sigma=0.2*10^-4 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E3=(A*E_not)/(d) // in V/m
disp(E3*1000,"electric field strength for poor soil in mV/m when f=1500kHz:")

// for cities,industrial areas
epsilon_r=5 // permittivity
sigma=10^-5 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E4=(A*E_not)/(d) // in V/m
disp(E4*1000,"electric field strength for cities,industrial areas in mV/m when f=1500kHz:")

// for Rockey soil,flat sandy
epsilon_r=10 // permittivity
sigma=2*10^-3 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E5=(A*E_not)/(d) // in V/m
disp(E5*1000,"electric field strength for Rockey soil,flat sandy in mV/m when f=1500kHz:")

// for medium hills,forestation
epsilon_r=13 // permittivity
sigma=5*10^-5 // conductivity in mho/cm
Df=1.8*10^12*(sigma/f2) // dissipation factor
b=atand((epsilon_r+1)/Df) // phase constant in degrees
p=(%pi/Df)*(d/lambda2)*cosd(b) // numerical distance
A=((2+0.3*p)/(2+p+0.6*p^2))-(sind(b)*(sqrt(p/2)*exp((-5*p)/8))) // factor of the ground losses
E6=(A*E_not)/(d) // in V/m
disp(E6*1000,"electric field strength for medium hills,forestation in mV/m when f=1500kHz:")



// note1 : misprint value of sigma in part (e) when f=500khz correct is sigma=2*10^-3 for rockey soil
//note 2:  The ans is rounded off at the F = 1500 kHz in poor soil and Cities, industrial area.
