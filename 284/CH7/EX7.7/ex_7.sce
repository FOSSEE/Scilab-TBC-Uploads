// Chapter 7_The pn junction Diode
//Caption_Generation Recombination currents
//Ex_7//page 277
T=300
tau_o=5*10^-7
tau_po=5*10^-7
tau_no=5*10^-7
Na=10^16    //acceptor impurity
Nd=10^16    // donor impurity
ni=1.5*10^10     //intrinsic concentration
epsr=11.7
eps=epsr*8.85*10^-14
V=5     //V=Vbi+VR
e=1.6*10^-19
W=((2*eps/e)*((Na+Nd)/(Na*Nd))*(V))^0.5
Jgen=e*ni*10^9*W/(2*tau_o)
printf('The ideal reverse saturation current density was calculated in example 2 and it was 4.15810^-11 A/cm^2 and the generation current density calculated here is %f nA/cm^2',Jgen)