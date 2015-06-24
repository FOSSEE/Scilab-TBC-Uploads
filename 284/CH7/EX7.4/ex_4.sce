// Chapter 7_The pn junction Diode
//Caption_pn Junction current
//Ex_4//page 261
T=300
Va=0.65
Js=4.15*10^-11
e=1.6*10^-19
J=Js*(exp(Va/0.0259)-1)
mun=1350
Nd=10^16

E=J/(e*mun*Nd)
printf('The electric field required to produce a given majority carrier drift is %f V/cm',E)
