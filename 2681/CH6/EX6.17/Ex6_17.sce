//input impedance of the shorted line
//given
clc
Zn=50//ohm
f=500//Mhz
Bl=0.2*%pi//B=2*pi/lemda
Zi=%i*Zn*tan(Bl)//input impedance
Zi=round(Zi*100)/100//rounding off decimals
disp(Zi,'the input impedance of the shorted line in ohm')
