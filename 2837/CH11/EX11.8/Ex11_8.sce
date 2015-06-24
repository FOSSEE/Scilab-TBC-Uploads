clc
clear
//Initialization of variables
P2=[180 160 140 120 100 80 60 40 20]
k=1.4
p1=200 //psia
t1=240+460 //R
cp=0.24
J=778
gc=32.2
R=53.35
m=4 //lb/sec
//calculations
pr=p1./ P2
prr=pr^((k-1)/k)
T2=t1 ./prr
dt=t1 -T2
dh=dt*cp
v2=sqrt(2*gc*J*dh)
vol=(R*T2) ./(P2*144)
A2=m*vol*144 ./v2
dia=sqrt(4/ %pi *A2)
rad=dia/2
den=1 ./vol
scf(1)
xtitle ('Velocity vs pressure','Pressure in psia','velocity in ft/s')
plot(P2,v2)
scf(2)
xtitle('specific volume vs pressure','Pressure in psia','specific volume in cu ft/lb')
plot(P2,vol)
scf(3)
xtitle('Radius vs Pressure' ,'Pressure in psia','Radius in in')
plot(P2,rad)
//results
disp('Velocity in ft/s')
disp(v2)
disp('Specific volume in cu ft/lb')
disp(vol)
disp('Density in lb/cu ft')
disp(den)
disp('Diameter of nozzle in in')
disp(dia)
