// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Mobility variation
//Ex_1//page 509
eps=11.7*8.85*10^-14
e=1.6*10^-19
T=300
Na=3*10^16
ni=1.5*10^10     //intrinsic carrier concentration
phi_fp=0.0259*log(Na/ni)
xdt=(4*eps*phi_fp/(e*Na))^0.5
QSD_MAX=e*Na*xdt;
Eeff=1/eps*QSD_MAX
printf('Effective electric field at threshold is %1.2f V/cm',Eeff)