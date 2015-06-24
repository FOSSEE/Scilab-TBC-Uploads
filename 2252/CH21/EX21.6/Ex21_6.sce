
//calculating regulation at full load at unity pf
V=3300//line voltage
Vph=V/sqrt(3)
P=500D+3//output
Ia=P/(sqrt(3)*V)
Ra=.4//resistance per phase
Xs=3.8//reactance per phase
pf=1//power factor
Ef=[(Vph*1+Ia*Ra)^2+(Vph*0+Ia*Xs)^2]^.5//open circuit voltage per phase
VR=(Ef-Vph)/Vph*100
mprintf("Regulation at full load at unity pf=%f percent\n", VR)
//calculating regulation at full load at .8 pf lagging
Ef=[(Vph*.8+Ia*Ra)^2+(Vph*0.6+Ia*Xs)^2]^.5
VR=(Ef-Vph)/Vph*100
mprintf("Regulation full load at .8 pf lagging=%f percent\n", VR)
//answers vary from the textbook due to round off error
