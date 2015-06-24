
//determine the ind.reactance nd capacitance nd voltage across R L C
R=25
C=20e-6
L=0.15
V=250
f=50
X=2*%pi*f*L
Xc=1/(2*%pi*f*C)
Z=sqrt(R^2+(X-Xc)^2)
I=V/Z
coso=R/Z
o=acosd(coso)
Vr=I*R
Vl=I*X
Vc=I*Xc
disp('Vr='+string(Vr)+'volts'  , 'Vl='+string(Vl)+'volts'  ,  'Vc='+string(Vc)+'volts'  ,  'phase angle='+string(o)+'degree'  , 'current='+string(I)+'amps'  ,  'impedence='+string(Z)+'ohms'  , 'ind.reactance='+string(X)+'ohms' , 'ind capacitance='+string(Xc)+'ohms')
