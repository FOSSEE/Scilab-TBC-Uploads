
//calculating synchronous impedance
Voc=90//open circuit voltage per phase
Isc=15//short circuit current
Zs=Voc/Isc
mprintf("Synchronous impedance=%d ohm\n", Zs)
//calculating synchronous reactance
Ra=1//armature resistance per phase
Xs=sqrt(Zs^2-Ra^2)
mprintf("Synchronous reactance=%f ohm\n", Xs)
//Solving part (iii)
V=400//line voltage
Vt=round(V/sqrt(3))//phase voltage at the terminals of load
Ia=15//load current
Ef=round([(Vt*.8+Ia*Ra)^2+(Vt*.6+Ia*Xs)^2]^.5)
mprintf("Voltage rises from %d V to %d V, when the load is thrown off\n", Vt,Ef)
//solving part (iv)
//at 0.8 pf lagging
VR=(Ef-Vt)/Vt*100
mprintf("Regulation at .8 pf lagging=%f percent\n", VR)
//at unity pf
Ef=[(Vt*1+Ia*Ra)^2+(Vt*0+Ia*Xs)^2]^.5
VR=(Ef-Vt)/Vt*100
mprintf("Regulation at unity pf=%f percent", VR)
//answers vary from the textbook due to round off error
