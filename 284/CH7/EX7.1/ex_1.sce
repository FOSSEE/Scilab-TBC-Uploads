// Chapter 7_The pn junction Diode
//Caption_pn Junction current
//Ex_1//page 252
T=300   //temperature in kelvin
ni=1.5*(10^10)    //intrinsic ion concentration
Nd=10^16
Vf=0.60       //forward bias voltage
pno=(ni^2)/Nd
e=1.6*10^-19
pn=pno*exp(Vf/0.0259)
printf('Minority carrier hole concentration is %f cm^-3',pn)
