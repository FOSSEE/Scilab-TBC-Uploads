
P=2
f=50
S=42
m=S/3/P
gammaa=%pi/3/m
Kb=sin(m*gammaa/2)/m/sin(gammaa/2)
coilpitch=17
polepitch=S/2
spa=(polepitch-coilpitch)*gammaa
Kp=cos(spa/2)

N=S*2
Nc=N/2
Coilsperphase=Nc/3
Nph=Coilsperphase/2
Eline=2300
flux=Eline/sqrt(3)/4.44/Kb/Kp/f/Nph
disp(flux)
