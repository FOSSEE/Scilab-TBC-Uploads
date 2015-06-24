clc
clear

//input
//three impedances are connected in delta each containing a resistor and a capacitor
r=15;//resistance in ohms
c=100*(10^-6);//capacitance in farad
v=415;//3phase supply voltage in volts
f=50;//frequency in hertz

//calculations
xc=1/(2*%pi*f*c);//capacitive reactance in ohms
zp=((r^2)+(xc^2))^0.5;//impedance per phase in ohms
ip=v/zp;//phase current in amperes
il=ip*(3^0.5);//line current in amperes
phi=(180/%pi)*acos(r/zp);//leading phase angle in degrees

//output
mprintf('the line current is %3.1f A and the phase angle is %3.1f lead',il,phi)
