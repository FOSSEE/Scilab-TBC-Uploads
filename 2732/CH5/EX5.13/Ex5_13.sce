clc
// initialization of variables
clear
t=16 //mm
Pt=1500 //kg/cm^2
Ps=1025 //kg/cm^2
Pb=2360 //kg/cm^2

//part (a)
p=6 //cm
r=24 //mm
d=r/10+0.15
Ft=t*(p-d)*Pt/10
Fs=%pi*d^2*Ps/4
Fb=d*t*Pb
x=min(Ft,Fs,Fb)
effA=x*100/(p*t/10*Pt)

//part (b)
p=9 //cm
r=30 //mm
d=r/10+0.2
Ft=t*(p-d)*Pt/10
Fs=%pi*d^2*Ps/4
Fb=d*t*Pb
x=min(Ft,Fs,Fb)
effB=x*100/(p*t/10*Pt)

// results
printf('The efficiencies corresponding to cases a and b are %.1f, %.1f',effA,effB)
printf('\n Hence part b is better than part a')
