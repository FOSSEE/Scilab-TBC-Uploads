// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Comparison of the schottky barrier diode and the pn junction diode
//Ex_5/page 319
e = 1.6*10^-19;
e_phi_bn=0.67
A=114     //effective richardson constant
T=300
Jst=A*T^2*exp(-e_phi_bn/0.0259)
//if we neglect the barrier lowering effect, we have for the schottky barrier diode
//for a pn junction
Na=10^18
Nd=10^16
Dp=10
Dn=25
tau_po=10^-7
tau_no=10^-7
Lp=(Dp*tau_po)^0.5
Ln=(Dn*tau_no)^0.5
pno=2.25*10^4
npo=2.25*10^2
//the ideal reverse saturation current density of the pn junction diode can be determined as
Js=e*Dn*npo/Ln+(e*Dp*pno/Lp)
J=10^9*(Js+5.7*10^-13)
printf('Reverse saturation current density for schottky baarier diode is %f A/cm^2 and for pn junction is %f nA/cm^2',Jst,J)