// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_The two terminal MOS structure
//Ex_1//page 434
Na=10^16
T=300
eps=11.7*8.85*10^-14
e=1.6*10^-19
ni=1.5*10^10     //intrinsic carrier concentration
phi_fp=0.0259*log(Na/ni)
xdT=10^4*(4*eps*phi_fp/(e*Na))^0.5
printf('The maximum space charge width is %1.2f micrometer',xdT)