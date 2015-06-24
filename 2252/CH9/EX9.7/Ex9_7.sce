
Vl=1100//line voltage
Vph=Vl/sqrt(3)//star connected load
Il=80//current through load
Iph=Il
Zph=Vph/Iph
P=100D+3//power drawn by load
pf=P/(sqrt(3)*Vl*Il)//power factor
Rph=Zph*pf
Xc=sqrt(Zph^2-Rph^2)
f=50
C=1/(2*%pi*f*Xc)
mprintf("Capacitance per phase=%f microF", C*10^6)
//Answer vary from the textbook due to round off error
