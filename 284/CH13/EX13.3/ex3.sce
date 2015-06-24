// Chapter 13_Optical Devices
//Caption_Solar cells
//Ex_3//page 602
Na=5*10^18
Nd=10^16
Dn=25
e=1.6*10^-19
ni=1.5*10^10
Dp=10
tau_no=5*10^-7
tau_po=10^-7
JL=15*10^-3    //photocurrent density
Ln=(Dn*tau_no)^0.5
Lp=(Dp*tau_po)^0.5
Js=e*(ni^2)*((Dn/(Ln*Na))+(Dp/(Lp*Nd)))
Voc=0.0259*log(1+JL/Js)
printf('Open circuit voltage of SI pn juncton solar cell is %1.3f V',Voc)