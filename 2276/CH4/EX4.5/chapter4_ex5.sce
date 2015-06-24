clc
clear

//input
i=0.5;//current taken by filament of an electric lamp in amperes
v1=110;//supply voltage in volts
v2=240;//changed supply in volts
f=50;//supply frequency in hertz

//calculations
z=v2/i;//impedance in ohms
r=v1/i;//resistance of the lamp
xc=((z^2)-(r^2))^0.5;//reactance of the capacitor added to the lamp in series in ohms
c=(10^6)/(2*%pi*f*xc);//capacitance in microfarad
//this can also be solved using phasor diagram

//output
mprintf('the required value of the capacitance is %3.1f microfarad',c)
