clc
clear

//input
r=15;//resistance of each of three coils connected in star in ohms
l=0.08;//inductance of each of three coils connected in star in in henry
v=415;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
zp=((r^2)+((2*%pi*f*l)^2))^0.5;//impedance per phase in ohms
il=v/(zp*(3^0.5));//line current in amperes
ip=il;//for star connection
phi=(180/%pi)*acos(r/zp);//phase angle in degrees

//output
mprintf('the line current will be %3.1f A lagging on its corresponding phase voltage by %3.0f degrees',il,phi)
