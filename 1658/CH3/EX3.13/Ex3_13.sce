clc;
//ex3.13
sigma=100;
rho=0.1;
ni=1.5*10**10;
mun=1300;
mup=500;
ni1=2.5*10**13;
mun1=3800;
mup1=1800;
q=1.602*10**-19;
//concentration of p type germanium
p=sigma/(q*mup1);
disp('/cm^3',p*1,"p=");
n=(ni1^2)/p;
disp('/cm^3',n*1,"n=");
//concentration of n type silicon
n=rho/(mun*q);
disp('/cm^3',n*1,"n=");
p=(ni^2)/n;
disp('/cm^3',p*1,"p=");
