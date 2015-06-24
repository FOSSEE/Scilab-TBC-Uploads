clc
disp("the soln of eg 2.4--> Terminal Velocity");
dia=2*10^-3
P=101325      //given data
T=298.15
M=28.89*10^-3
R=8.314
rho=(P*M)/(R*T)
rho_oil=900
meu=1.85*10^-5
Re_oil_by_v=rho*dia/meu
vnew=0.1, e=1
while e>1e-6 do v=vnew, Re_oil=Re_oil_by_v*v, 
    Cd=24*(1+.15*Re_oil^.687)/Re_oil,
    vnew=sqrt(4*(rho_oil-rho)*9.81*dia/(3*Cd*rho)),
e=abs(vnew-v),
end
disp(v,"the terminal velocity in m/s is");    

