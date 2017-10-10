// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Shottky barrier diode
//Ex_1//page 308
eps=13.1*8.85*10^-14;
e = 1.6*10^-19;
T=300    //temperature in kelvin
Nd=10^16    //donor impurity
phi_m=4.55    //metal work function for tungsten
xi=4.01      //electron affinity for silicon
phi_bo=phi_m-xi
phi_n=0.0259*log(2.8*10^19/Nd)
Vbi=phi_bo-phi_n
xn=(2*eps*Vbi/(e*Nd))^0.5     //space charge width at zero bias
Emax=e*Nd*xn/eps    //maximum electric field
printf('Theoritical barrier height is %f V, built-in potential barrier is %f V and maximium electric field is %f V/cm', phi_bo,phi_n,Emax)