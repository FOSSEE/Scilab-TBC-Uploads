clc;
//ex3.7
rho=0.47;
q=1.6*10**-19;
mun=0.39;
mup=0.19;
sigma=1/rho;//conductivity of intrinsic semiconductor
disp('ohm-m^-1',sigma*1,"sigma=");
n=sigma/(q*(mun+mup));//intrinsic carrier concentration of germanium
disp('/m^3',n*1,"n=");
