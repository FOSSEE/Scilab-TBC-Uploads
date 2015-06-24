clc
clear

//input
r=12;//resistance of the coil in ohms
l=0.08;//inductance of the coil in henry
c=150*(10^-6);//capacitance of capacitor connected in series in farad
v=240;//supply voltage in volts
i=20;//desired current in amperes

//calculations
z=v/i;//impedance in ohms
w=((1/(l*c))^0.5);//angular frequency in rad/sec
f=w/(2*%pi);//frequency required in hertz
xl=w*l;//inductive reactance in ohms
pdc=xl*i;//p.d. across the capacitor in volts
pd=i*(((r^2)+(xl^2))^0.5);//p.d. across the coil

//ouput
mprintf('the frequency at which the current will be 20A is %3.0f Hz and at this frequency the p.d.s across the coil and across the capacitor will be %3.0f V and %3.0f V respectively',f,pd,pdc)
