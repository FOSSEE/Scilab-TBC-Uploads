clc;
//ex3.15
Nsi=4.96*10**22;
ni=1.52*10**10;
q=1.6*10**-19;
mun=1350;
mup=480;
//resistivity of intrinsic silicon
sigma=q*ni*(mun+mup)
disp('(ohm-cm)^-1',sigma*1,"sigma=");
rho=1/sigma;
disp('ohm-cm',rho*1,"rho=");
//resistivity of doped silicon
ND=Nsi/(50*10^6);
disp('/cm^3',ND*1,"ND=");
n=ND;
p=(ni**2)/n;
disp('/cm**3',p*1,"p=");
sigma=q*n*mun;
disp('(ohm-cm)^-1',sigma*1,"sigma=");
rho=1/sigma;
disp('ohm-cm',rho*1,"rho=");
