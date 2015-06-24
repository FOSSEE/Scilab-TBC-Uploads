// Chapter 7_The pn junction Diode
//Caption_pn Junction current
//Ex_3//page 258
Jn=20     //electron current density
Jp=5     //hole current density
T=300
Va=0.65
ni=1.5*10^10     //intrinsic concentration
Dn=25
Dp=10
e=1.6*10^-19
tau_po=5*10^-7
tau_no=5*10^-7
epsr=11.7
Na=1/(Jn/((e*(Dn/tau_no)^0.5)*(ni^2*(exp(Va/0.0259)-1))))
Nd=1/(Jp/((e*(Dp/tau_po)^0.5)*(ni^2*(exp(Va/0.0259)-1))))
printf('The design parameters for this semiconductor are Na=%f cm^-3 and Nd=%f cm^-3',Na,Nd)