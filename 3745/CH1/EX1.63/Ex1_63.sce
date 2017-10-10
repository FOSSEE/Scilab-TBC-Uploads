// Ex 63 Page 404

clc;clear;close;
// Given
R=180;//ohm
V=4;//V
l=75;//cm
vd=.4;//V
emf=1.9;//V
Rc=850;//ohm
sg=17.5;//mm/uA
df=2;//mm


I=R/V;//A
Rw=vd/I;//ohm 
Id=df/sg*10**-6;//A 
el=1/sg*Rc;//uV
printf("error limit = %.1f uV",el)
Rw1=0.2/l*Rw;//ohm (for 2cm slide wire)
dV=I*Rw1*1000;//mV 
r1=emf/I;//ohm 
r2=r1*22.8/R;//ohm
Ig=dV/1000/(Rc+r2);//A
d=dV/1000/(Rc+r2)/Id;//mm
printf("\n Deflection  = %.1f mm",d)
