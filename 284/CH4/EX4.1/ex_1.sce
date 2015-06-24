// Chapter 4_Carrier Transport Phenomenon
//Caption_Carrier drift
//Ex_1//page 134
T=300    //temperature in kelvin
Na=0
e=1.6*(10^-19)
Nd=10^16    //donor concentration in per cm cube
E=10   //Applied electric field in V/cm
ni=1.8*(10^6)
n=(Nd-Na)/2+(((Nd-Na)/2)^2+ni^2)^0.5
p=ni^2/n
muN=8500   //mobility of electron in  gallium arsenide in cm^2/V-s
mup=400
J=e*(muN*n+mup*p)*E
printf('The drift current density for this electric field is %1.2fd A/cm^2',J )