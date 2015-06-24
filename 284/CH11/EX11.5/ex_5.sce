// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Lightly doped drain transistor
//Ex_5//page 531
tox=500*10^-8
VFBO=-1.25     //initial flat band voltage
e=1.6*10^-19
eps_ox=3.9*8.85*10^-14
ni=1.5*10^10     //intrinsic carrier concentration
VT=0.70
Na=5*10^15
phi_fpo=0.0259*log(Na/ni)
xdto=(4*eps*phi_fpo/(e*Na))^0.5
Cox=eps_ox/tox
VTO=VFBO+2*phi_fpo+(e*Na*xdto)/Cox
x=VT-VTO
Dt=Cox*x/e    //implant dose
xt=0.15*10^-4    //depth to which uniform implant extends
Nsa=Dt/xt
Ns=Nsa+Na
printf('The required implant dose to achieve the desired threshold voltage is %1.2f per cm^2',Dt)
