// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Flat band voltage
//Ex_4//page 445
Na=3*10^16
eps=11.7*8.85*10^-14
eps_ox=3.9*8.85*10^-14
e=1.6*10^-19
Qss=10^11
Vtn=0.65
ni=1.5*10^10     //intrinsic carrier concentration
phi_ms=-1.13
phi_fp=0.0259*log(Na/ni)
xdt=(4*eps*phi_fp/(e*Na))^0.5
QSD=e*Na*xdt
x=Vtn-phi_ms-2*phi_fp
y=(QSD-Qss*e)/eps_ox
z=x/y*10^8
printf('The oxide thickness of this MOS system is %1.0f angstorm',z)