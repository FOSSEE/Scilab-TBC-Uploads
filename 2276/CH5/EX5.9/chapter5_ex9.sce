clc
clear

//input
r=10;//resistance of an inductor in ohms
l=0.08;//inductance of an inductor in henry
c=150*(10^-6);//capacitance by which the inductor is shunted in farad
v=240;//supply voltage in volts

//calculation
z1=l/c;//impedance in henry
f0=(1/(2*%pi))*(((z1-(r^2))/(l^2))^0.5);//resonant frequency in hertz
z=((r^2)+((2*%pi*f0*l)^2))^0.5;//impedance in ohms
it=(v*r)/(z^2);//total current in amperes

//output
mprintf('the circuit will be in current resonance at a frequency of %3.1f Hz and at this frequency the supply current will be %3.1f A',f0,it)
