
Pout=37.3D+3//power output
e=.88//efficiency
Pin=Pout/e//input power
pf=.82//power factor
phi=acosd(pf)
//calculating W1 and W2-->W1+W2=Pin, W1-W2=Pin*tan(phi)/sqrt(3)
a=[1 1;1 -1]
b=[Pin;Pin*tan(phi*%pi/180)/sqrt(3)]
w=inv(a)*b
mprintf("Readings of two wattmeters are:\nW1=%f kW,\nW2=%f kW\n", w(1,1)/1000, w(2,1)/1000)
Vl=440//line voltage
Il=Pin/(sqrt(3)*Vl*pf)
mprintf("Full load line current=%f A", Il)

