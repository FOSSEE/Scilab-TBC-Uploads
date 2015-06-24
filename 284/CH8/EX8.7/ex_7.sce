// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Tunnelling barrier
//Ex_7//page 325
T=300   //temperature in kelvin
Nd=7*10^18    //donor impurity
e=1.6*10^-19
phi_bn=0.67     //schottky barrier
Vbi=phi_bn    //assumption with neglection of barrier lowering effect
eps=11.7*8.85*10^-14
xn=(2*eps*Vbi/(e*Nd))^0.5
x=10^8*xn
printf('The space charge width is %1.0f Angstorm',x)