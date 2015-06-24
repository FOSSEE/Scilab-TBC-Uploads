//consider the airplane of example 7.8.its elevator hinge derivatives are:
DCh=-0.008;//derivative w.r.t absolute angle of attack of tail
DChe=-0.013;//derivative w.r.t elevator deflection
at=0.1;//tail lift slope per degree(from example 7.4)
DClt=0.04;// elevator control efficiency (from example 7.8)
Hac=0.24;//location of aerodynamic center from leading edge(from example 7.3)
Vh=0.34;//tail volume ratio(from example 7.4)
de=0.35;//derivative of downwash angle w.r.t angle of attack(from example 7.4)
a=0.08;//lift slope(from example 7.4)
F=1-DClt*DCh/(at*DChe) //free elevator factor
Hn=Hac+F*Vh*at*(1-de)/a //neutral point
