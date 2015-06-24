//example 16.9
clc; funcprot(0);
// Initialization of Variable
rho=2770;
L=0.0015;
epsilon=0.8;//emmisivity
Tavg=360.5;
Tsur=448;
sigma=5.67e-8;
c=875;//J/kg-K
tc=rho*L*c/(40+12)*log((25-175)/(150-175));
te=tc+5*60;
disp(te,"total time spent in s");
hrad=epsilon*sigma*(Tavg+Tsur)*(Tavg^2+Tsur^2);
disp(hrad,"radiation energy in W/m^2-K");
clear()
