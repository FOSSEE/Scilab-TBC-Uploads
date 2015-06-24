//consider the wing-body-tail wind tunnel model of example 7.4.
a=0.08;//lift slope
S=0.1;//area of wing(m^2)
c=0.1;//chord of wing(m)
lt=0.17;//distance between airplane'scenter of gravity and aerodynamic center of tail
St=0.02;//tail area(m^2)
It=2.7;//tail settling area(degree)
at=0.1;//tail lift slope per degree
eo=0;//downwash angle at zero lift
de=0.35;//derivative of downwash angle w.r.t angle of attack
Vh=lt*St/(c*S)//tail volume ratio
Cmac=-0.032;//moment coefficient about the aerodynamic center
//derivative of Cmcg w.r.t absolute angle of attack:
DCmcg=a*(dh-Vh*at*(1-de)/a)
//value of moment coefficient at zero absolute angle of attack Cmo:
Cmo=Cmac+Vh*at*(It+eo)
//equilibrium angle of attack(from moment coefficient curve):
Ae=Cmo/0.0133