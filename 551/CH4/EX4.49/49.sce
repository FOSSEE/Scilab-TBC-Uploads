clc
Ca=250; //m/s
t=-14; //0C
ha=250; //kJ/kg
hg=900; //kJ/kg
ratio=0.0180;
Ef=45*10^3; //kJ/kg
Q=-21; //kJ/kg
ma=1; //kg
mg=1.018; //kg
mf=0.018; //kg
Eg=0.06*mf/mg*Ef;
Cg=sqrt(2000*([ma*(ha+Ca^2/2/1000) + mf*Ef + Q]/mg -hg-Eg));
disp("velocity of exhaust gas jet = ")
disp(Cg)
disp("m/s")