
//considering star connected circuit
Rph=20//resistance of coil
Xph=15//reactance of coil
Vl=400//line voltage
Vph=Vl/sqrt(3)//phase voltage
Zph=sqrt(Rph^2+Xph^2)//impedance per phase
Iph=Vph/Zph//phase current
Il=Iph//line current
pf=Rph/Zph//power factor
phi=acosd(pf)
Pin=sqrt(3)*Vl*Il*pf//input power
//calculating W1 and W2-->W1+W2=Pin, W1-W2=Pin*tan(phi)/sqrt(3)
a=[1 1;1 -1]
b=[Pin;Pin*tan(phi*%pi/180)/sqrt(3)]
w=inv(a)*b
mprintf("Readings of two wattmeters in case of star connection are\nW1=%f W,\nW2=%f W\n", w(1,1), w(2,1))
//considering delta connected circuit
Iph=Vl/Zph//phase current
Il=sqrt(3)*Iph//line current
Pin=sqrt(3)*Vl*Il*pf//input power
//calculating W1 and W2-->W1+W2=Pin, W1-W2=Pin*tan(phi)/sqrt(3)
a=[1 1;1 -1]
b=[Pin;Pin*tan(phi*%pi/180)/sqrt(3)]
w=inv(a)*b
mprintf("Readings of two wattmeters in case of delta connection are\nW1=%f W,\nW2=%f W", w(1,1), w(2,1))
//The answers vary from the textbook due to round off error
