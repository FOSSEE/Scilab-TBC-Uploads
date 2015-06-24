clc;
warning('off');
printf("\n\n example1.1 - pg6");
// given
v=0.01283;  //[m^3] - volume of tank in m^3
v=0.4531;  //[ft^3] - volume of tank in ft^3
p=2;  //[atm] - pressure
T=1.8*300;  //[degR] - temperature
R=0.73;  //[(atm*ft^3)/(lbmol*degR)] - gas constant
// using the equation of state for an ideal gas pv=nRT
n=(p*v)/(R*T);
disp(n,"no. of moles,n=");
xN2=0.5;  // fractiom of N2 in tank
nN2=xN2*n;
Ca=nN2/v;
printf("\n\n Ca=%elb*mol/ft^3",Ca);
