//consider the wing model of example 7.3:
S=0.1;//area of wing(m^2)
c=0.1;//chord of wing(m)
lt=0.17;//distance between airplane'scenter of gravity and aerodynamic center of tail
St=0.02;//tail area(m^2)
It=2.7;//tail settling area(degree)
at=0.1;//tail lift slope per degree
eo=0;//downwash angle at zero lift
de=0.35;//derivative of downwash angle w.r.t angle of attack
Vh=lt*St/(c*S)//tail volume ratio
//following datas are from example 7.3 
Cmac=-0.032;//moment coefficient about the aerodynamic center
a=0.08;//lift slope
a1=7.88+1.5;//absolute angle of attack(degree)
dh=0.11;//distance between aerodynamic center and center of gravity