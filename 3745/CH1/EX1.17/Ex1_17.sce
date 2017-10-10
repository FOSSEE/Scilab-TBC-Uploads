// Ex 17 Page 358

clc;clear;close;
// Given
R=80;//ohm
V=2;//V
l=50;//cm
vd=.1;//V
emf=1.43;//V
Rc=850;//ohm
sg=17.5;//mm/uA
df=1;//mm


I=R/V;//A
Rw=vd/I;//ohm (Resistance of side wire)
Id=df/sg*10**-6;//A (current for 1mm deflection)
el=1/sg*Rc;//uV
printf("The limit of error = %.1f uV",el)
Rw1=0.2/l*Rw;//ohm (for 2cm slide wire)
dV=I*Rw1*1000;//mV (Change in voltage from null point)
r1=emf/I;//ohm (tapped portion) 
r2=r1*22.8/R;//ohm
Ig=dV/1000/(Rc+r2);//A
d=dV/1000/(Rc+r2)/Id;//mm
printf("\n Deflection  = %.1f mm",d)
