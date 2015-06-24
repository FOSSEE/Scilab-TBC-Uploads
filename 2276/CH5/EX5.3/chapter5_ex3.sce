clc
clear

//input
//coils a and b in connected in parallel
v=240;//supply voltage in volts
f=50;//supply frequency in hertz
ra=10;//resistance of coil a in ohms
xla=25;//inductive reactance of coil a in ohms
rb=20;//resistance of coil b in ohms
xlb=12;//inductive reactance of coil b in ohms

//calculations
z1=((ra^2)+(xla^2))^0.5;//impedance of coil a in ohms
i1=v/z1;//current in coil a in amperes
cos1=ra/z1;//cosine of phase angle1 
sin1=xla/z1;//sine of phase angle1
z2=((rb^2)+(xlb^2))^0.5;//impedance of coil b in ohms
i2=v/z2;//current in coil b in amperes
cos2=rb/z2;//cosine of phase angle2
sin2=xlb/z2;//sine of phase angle2
ii=(i1*cos1)+(i2*cos2);//total in phase component in amperes
iq=(i1*sin1)+(i2*sin2);//total quadrature component in amperes
I=((ii^2)+(iq^2))^0.5;//total current in amperes

//output
mprintf('the total current is %3.1f A',I)
