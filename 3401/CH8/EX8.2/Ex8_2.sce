clc

T=300//K
Na=10**16 //cm^-3
Nd=10**16 //cm^-3
ni=1.5*10**10 //cm^-3
Dn=25 //cm^2/s
Dp=10 //cm^2/s
taup0=5*10^-7 //s
taun0=5*10^-7 //s
epsilon=11.7
e=1.6*10**-19 //C

//J=(E*D*np0/Ln)+(E*D*pn0/Lp)
Js=e*ni^2*[(1/Na)*sqrt(Dn/taun0)+(1/Nd)*sqrt(Dp/taup0)]
disp(Js,"reverse saturation current density in A/cm^2 is=")
