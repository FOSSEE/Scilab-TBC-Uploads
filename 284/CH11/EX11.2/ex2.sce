// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Mobility variation
//Ex_2//page 517
Na=3*10^16
tox=450*10^-8
eps=11.7*8.85*10^-14
e=1.6*10^-19
eps_ox=3.9*8.85*10^-14
ni=1.5*10^10     //intrinsic carrier concentration
L=1.25*10^-4
rj=0.5*10^-4
Cox=eps_ox/tox    //oxide capacitance
phi_fp=0.0259*log(Na/ni)
xdt=(4*eps*phi_fp/(e*Na))^0.5
x=e*Na*xdt/Cox
y=(1+(2*xdt/rj))^0.5-1
delVt=-x*(rj*y/L)      //voltage shift

printf('Threshold voltage shift due to short channel effects is %1.3f V',delVt)