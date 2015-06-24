// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Flat band voltage
//Ex_3//page 442
Na=10^16
tox=500*10^-8     //oxide thickness
Qss=10^11      //trapped charge per unit area
e=1.6*10^-19
eps_ox=3.9*8.85*10^-14
Cox=eps_ox/tox
QSS=Qss*e
phi_ms=-1.1
Vfb=phi_ms-(QSS/Cox)
printf('Flat band voltage for this MOS capacitor is %1.2f V',Vfb)
