clc
//Chapter8
//Example8.23, page no353
//Given
//a
L=1e-3// inductance
C=61.25e-9//capacitance
Ld=44e-3//coil inductance
d=2//distance intervals after which coils are added
Lt=(L*2)+(Ld*2)//total inductance
Ct=C*2//total capacitance
fc=(%pi*sqrt(Lt*Ct))^-1//cut off freq

//b
I=100e-3//milliameter range
R=1//milliameter resistance
Zo=100//characteristic impedance
Zin=(Zo^2)/R//input impedance

Er=I*R//
Es=Er*sqrt(Zin/Zo)
mprintf('The cut-off freq is %f KHz \n the voltage being measured is %d V',fc*1e-3,Es)


