clc
clear

//input
r=10;//resistance of an inductor in ohms
l=0.08;//inductance in henry
c=200*(10^-6);//capacitence of the capacitor connected in series to the inductor in farad
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
xl=2*%pi*f*l;//reactance of the inductor in ohms
xc=1/(2*%pi*f*c);//reactance of the capacitor in ohms
R=xl-xc;//total reactacne of the circuit in ohms
z=((r^2)+(R^2))^0.5;//impedance of the circuit in ohms
I=v/z;//current in ohms
phi=(180/%pi)*acos(r/z);//phase angle in degrees
pd=I*(((r^2)+(xl^2))^0.5);//p.d. across inductor in volts

//output
mprintf('the current taken from the supply is %3.1f A lagging on the voltage by %3.1f degrees and the voltage drop across the inductor is %3.0f V',I,phi,pd)
